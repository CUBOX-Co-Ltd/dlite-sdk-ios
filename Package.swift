// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "dlite-sdk-ios",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "DliteSDK", targets: ["DliteSDK"]),
    ],
    targets: [
        .target(
            name: "DliteSDK",
            dependencies: ["Dlite", "Cameramodule", "Inferencemodule", "LicenseModule"]
        ),
        .binaryTarget(
            name: "Dlite",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.2/Dlite.xcframework.zip",
            checksum: "3036afa8a3f7e7ed18c6bb2607392f09900be35591ab688188ef349620c7c436"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.2/Cameramodule.xcframework.zip",
            checksum: "6be8f612374673d0517fa3edfe99cf4f589c07a72db61942d217828c1abed1c6"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.2/Inferencemodule.xcframework.zip",
            checksum: "e7080ede98ec068847bbc231fa0243668d6df36d87d10b15f77fd0a1eeafbf12"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.2/LicenseModule.xcframework.zip",
            checksum: "338e78f5ae6895e7750174c3a09e9ad5537a40805200080b2059c28f3ac056e4"
        ),
    ]
)
