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
    dependencies: [
        // 외부 의존성 추가
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.1")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.8.2"))
    ],
    targets: [
        .target(
            name: "DliteSDK",
            dependencies: ["Dlite", "Cameramodule", "Inferencemodule", "LicenseModule", "Alamofire", "CryptoSwift"]
        ),
        .binaryTarget(
            name: "Dlite",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/Dlite.xcframework.zip",
            checksum: "ceaca6d7c4044cea52e881beec2212ae30aec27c30d73634794c9ddded3d8ef3"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/Cameramodule.xcframework.zip",
            checksum: "c9b326ec902d7544ff55b3347b860cceed8cae17431a82e3d893d7e8b2523cc0"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/Inferencemodule.xcframework.zip",
            checksum: "904d88c8ae00557722c3718a2ed08087ab44aa199812b18d9a25cf9b052a05ce"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.3/LicenseModule.xcframework.zip",
            checksum: "07a7c42a8e108e44c604a5fc8b887e429662aebdf0e8b0e019508b1f532a57db"
        ),
    ]
)
