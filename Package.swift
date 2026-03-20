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
            checksum: "e9b0e4b04e90d37e23c36cd390a11a94daff52dabb3c671f41fad53e7361b89c"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Cameramodule.xcframework.zip",
            checksum: "99834e27240f3d283901b6a2031ba65ac98a41f1622b487f8b464ec0ca2cc654"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Inferencemodule.xcframework.zip",
            checksum: "971d9b2187f3feecfd27c0f9f020d439aad48aa0cc9de9ef0392ced9f250fb98"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/LicenseModule.xcframework.zip",
            checksum: "7782469a9f57f2607052d33da48e5fb3f24f3aa79925698ba2197fa153e77d27"
        ),
    ]
)
