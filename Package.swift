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
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.5/Dlite.xcframework.zip",
            checksum: "29505621fa239a74fbb6ef2344b0ca38ee7b6b1a2d2b414c32141240426b9763"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.5/Cameramodule.xcframework.zip",
            checksum: "15e722fbc8e691f069847fd10617f79746266c460545fd0d3587fc05125c2bc1"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.5/Inferencemodule.xcframework.zip",
            checksum: "86a7cf1b2b29f3bf4c9fdaa4b36bcce658ada9eef8111dd3915284242f43fdf2"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.5/LicenseModule.xcframework.zip",
            checksum: "324ee576c7e08a9b41575dda524df7307f8d1886200f627288f854ee4f268a9e"
        ),
    ]
)
