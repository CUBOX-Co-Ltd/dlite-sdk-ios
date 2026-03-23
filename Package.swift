// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "dlite-sdk-ios",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "DliteSDK", targets: ["DliteSDK"]),
        .library(name: "Dlite", targets: ["Dlite"]),
        .library(name: "Cameramodule", targets: ["Cameramodule"]),
        .library(name: "Inferencemodule", targets: ["Inferencemodule"]),
        .library(name: "LicenseModule", targets: ["LicenseModule"]),
    ],
    targets: [
        .target(
            name: "DliteSDK",
            dependencies: ["Dlite", "Cameramodule", "Inferencemodule", "LicenseModule"]
        ),
        .binaryTarget(
            name: "Dlite",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Dlite.xcframework.zip",
            checksum: "72d115fa7326e890245316f76c80b22e4a2379d96942d58784be2ea16ef48893"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Cameramodule.xcframework.zip",
            checksum: "0da13713662c9191ca5317e406a6bab18fdcfbdcd7f8a8f0d66ca50da3def17d"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Inferencemodule.xcframework.zip",
            checksum: "b49f4bac760789cb185d5b5ca5d66bbc8f1b29e462b2a315c53f379d5c11d698"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/LicenseModule.xcframework.zip",
            checksum: "2b33c144b91ac7631b3c8ee08a5ddc06d8f8e606180c03373471e3ee119d2c7d"
        ),
    ]
)
