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
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/Dlite.xcframework.zip",
            checksum: "8983153e81db77e4d6874fb257309e768cbf5ca92d3c2e9243f80d51374253fb"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/Cameramodule.xcframework.zip",
            checksum: "82e8624a99c4200c0fce0e74663779517043e1974e428170c988c3212d29d2b9"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/Inferencemodule.xcframework.zip",
            checksum: "fc4d3a7832431758d44fbcc4c270c7113527b212084c7bba33618d0134329e88"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/LicenseModule.xcframework.zip",
            checksum: "cbcedae3206a7420d31c9a0e74f56aed72c59b29cb99d6092683fd7d0f7ff068"
        ),
    ]
)
