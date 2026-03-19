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
            checksum: "f288ab61697f21db093b826d35ce51d6a9ac140f40bbd9afd31d7389dc4a07ab"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Cameramodule.xcframework.zip",
            checksum: "f60377b1c242369f1178bba381d8088d0c5f6de53f69a7a76ee2193fbc1384d3"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/Inferencemodule.xcframework.zip",
            checksum: "16996cce6e76f519e617c9be9772f29b85eea9a2763ae812551151236da76f6d"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0/LicenseModule.xcframework.zip",
            checksum: "32112c8283937b57c25ceb9546a8cbeaa351086b85951fd68bd24f2286bd85b2"
        ),
    ]
)
