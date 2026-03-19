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
            checksum: "da5e0117c3785daf6e4f6b48a3d4ffbc36467ff7ede60e701f8b189749f49ca8"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Cameramodule.xcframework.zip",
            checksum: "361cc580cb2585dd9f4cb74f8b18430684a3a3b2b29d229630e283c4456dc708"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Inferencemodule.xcframework.zip",
            checksum: "2063bb6cbab338d47cd1effc9aadbfbeb06379cb4be3ea4c7136f50c1b19280e"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/LicenseModule.xcframework.zip",
            checksum: "f72bc64e9488f32d83df00cb6748fc4ea5546b9a1337bc804b8a8adf5ce551fb"
        ),
    ]
)
