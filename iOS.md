## iOS SDK
Last modified: 2026.03.19

<br/> <br/>


## SDK Requirements

- iOS 15+
- Swift 5.9+
- Xcode 26+

<br/> <br/>

## SDK Setup (SPM)

### Adding Package Dependency

1. In Xcode, go to **File > Add Package Dependencies**.
2. Enter the repository URL in the search bar:
   ```
   https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios
   ```
3. For **Dependency Rule**, select **Exact Version** and enter the desired version (e.g. `2.0.0`).
4. Click **Add Package**.
5. In the **Choose Package Products** dialog, check all four modules and ensure they are added to your app target:
   - **Dlite** — Core SDK (API, license, initialization)
   - **Cameramodule** — Camera UI and interaction
   - **Inferencemodule** — AI-based face feature extraction
   - **LicenseModule** — License authentication and verification
6. Click **Add Package** to finish.

### Verifying Installation

After adding the package, confirm that all four modules appear under **Package Dependencies** in the Xcode project navigator. You should be able to import them in your Swift files:

```swift
import Dlite
import Cameramodule
import Inferencemodule
import LicenseModule
```

> **Note:** All four modules are required for the SDK to function properly.

<br/> <br/>


## SDK Initialization
<span style="color:red; font-weight:bold;">[!] You must provide a license key in setLicenseKey during initialization.</span>

```swift
import Dlite
import Cameramodule

private func initialize() {
    let option = DliteOption.Builder()
        .setLicenseKey("YOUR_LICENSE_KEY")
        .setFaceRecognitionBaseUrl("YOUR_FRS_URL")
        .setLivenessBaseUrl("YOUR_LIVENESS_URL")
        .setModules(.inferenceModule)
        .setLogLevel(.DEBUG)
        .build()

    DliteSdk.with.initialize(option: option) { (completed, error) in
        if completed {
            print("Initialization successful")
        } else {
            print("Initialization failed: \(String(describing: error))")
        }
    }
}
```

<br/> <br/>

## Using Camera View
1. The camera view runs once, returns the result, and then terminates.
2. You can modify the UI using the provided functions.
3. Result handling: Success - `CameraResult.result`, Failure - `CameraResult.error`
4. Available modes: **LiveCapture**, **FaceRecognition**, **Liveness**

```swift
private func createCameraView() -> CameraView {
    return CameraView(
        mode: .liveCapture(option: .init())
//      mode: .faceRecognition(option: .init())
//      mode: .liveness(option: .init())
    ) { result in
        switch result {
        case let .result(succeedStatus, image, faceId):
            if let image = image {
                self.resultImage = image
            }
            break
        case let .error(errorStatus, errorMessage, exception):
            break

        default: break
        }
    }
}
```
