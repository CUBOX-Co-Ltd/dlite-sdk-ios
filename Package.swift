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
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.6/Dlite.xcframework.zip",
            checksum: "b4e58b979e7da7e6432b7b300051b5fec268f7d6dc88c570a85e84a23962b3c0"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.6/Cameramodule.xcframework.zip",
            checksum: "39e98859d39baa56bed56ef534e491b41dc7a319e115b7e142251e7a64d03b4e"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.6/Inferencemodule.xcframework.zip",
            checksum: "ef075c8fe44ab62401990058e0f1ebf69922ca96cb5d4249ee8fa09a643c9ce5"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.6/LicenseModule.xcframework.zip",
            checksum: "bdad4e89491f32647a83f209074d49353b7078e40614e7cfd15ebae0a59c72df"
        ),
    ]
)
