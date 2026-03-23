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
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.1/Dlite.xcframework.zip",
            checksum: "73847aaa9a58e9784910fa8c74ab8342ec68a01408459de858415c46bf767c52"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.1/Cameramodule.xcframework.zip",
            checksum: "7affa819f39832c9e6b07ff97682339cd652ea2486291513763ebcba1747c813"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.1/Inferencemodule.xcframework.zip",
            checksum: "1af42c59e91d973e574e513518ec9b808f42e21de7c211c09e0afc2682840528"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.1/LicenseModule.xcframework.zip",
            checksum: "0ee2cf0eed721177e54a893f6dc7d472e694af1363266f94962f4fe7a4592c7c"
        ),
    ]
)
