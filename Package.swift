// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "DliteSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Dlite", targets: ["Dlite"]),
        .library(name: "Cameramodule", targets: ["Cameramodule"]),
        .library(name: "Inferencemodule", targets: ["Inferencemodule"]),
        .library(name: "LicenseModule", targets: ["LicenseModule"]),
    ],
    targets: [
        .binaryTarget(
            name: "Dlite",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Dlite.xcframework.zip",
            checksum: "1167152c3273b6764a16695d798a9fc267b526979c2ae2e84b78c0010e8c37e8"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Cameramodule.xcframework.zip",
            checksum: "02879ba3e7acd265e5e100a1fe1e9be4d707f946aae5b16a073aafc924f2fe12"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Inferencemodule.xcframework.zip",
            checksum: "f8ee0e60d20adb2341fe84e7ad21fa4345a33fa33408ca240657e690e2e4417f"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/LicenseModule.xcframework.zip",
            checksum: "3a54ec8945329928ef574f9d5de803deeb577e90dd713751a48fb47fa36e12fc"
        ),
    ]
)
