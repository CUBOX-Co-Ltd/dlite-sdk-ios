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
            dependencies: ["Dlite", "Cameramodule", "Inferencemodule", "LicenseModule", "Alamofire", "CryptoSwift"]
        ),
        .binaryTarget(
            name: "Dlite",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/Dlite.xcframework.zip",
            checksum: "9227d1af9fbfc4da31ab1119b073b5ce17f89c120700ab5b0b910959aafa9fb9"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/Cameramodule.xcframework.zip",
            checksum: "c3c04651f92eaa274591f64f486545922321daf19f7394fc8d86a0168022551a"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/Inferencemodule.xcframework.zip",
            checksum: "893f2d71f3fd712dcecda50a7d233d487dc86ff86efc4286c997e936f5df734d"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/LicenseModule.xcframework.zip",
            checksum: "253d319c706466f0a22bb0c2f5e5c4322c28cef8954418704e2dfd2b80b89625"
        ),
    ]
)
