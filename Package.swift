// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "dlite-sdk-ios",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "Dlite", targets: ["Dlite"]),
        .library(name: "Cameramodule", targets: ["Cameramodule"]),
        .library(name: "Inferencemodule", targets: ["Inferencemodule"]),
        .library(name: "LicenseModule", targets: ["LicenseModule"]),
    ],
    dependencies: [
        // 외부 의존성 라이브러리 추가
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.2")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.9.0"))
    ],
    targets: [
        .target(
            name: "DliteSDK",
            dependencies: [
                "Dlite", 
                "Cameramodule", 
                "Inferencemodule", 
                "LicenseModule",
                "Alamofire",
                "CryptoSwift"
            ]
        ),
        .binaryTarget(
            name: "Dlite",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/Dlite.xcframework.zip",
            checksum: "d17a55223a1fa0a6c7d8706863937e4e1587fd0f9ac33c6de50efe87d459ccaa"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/Cameramodule.xcframework.zip",
            checksum: "9e0bdc932173a8cece70b8c17ef4ad75556223489785b926b7f5b5e335493b6b"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/Inferencemodule.xcframework.zip",
            checksum: "b961182635b012623dc1ddc67dcbc2d62d5edb20f09f9f476b29a8da77b202ee"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.4/LicenseModule.xcframework.zip",
            checksum: "99e15a5ccf04ebe52a46781fe392749b697418ce876143fe68fb9eeb652e08a9"
        ),
    ]
)
