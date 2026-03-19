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
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/Dlite.xcframework.zip",
            checksum: "82f12d50d3732221bc0770ad743295d2f4b8e0e15f2b45c8ab209545a3ccd7ba"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/Cameramodule.xcframework.zip",
            checksum: "3817b623516a045bde1991d5fe354a2200a808951b3cf9d0d7814485b65d6789"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/Inferencemodule.xcframework.zip",
            checksum: "5decd43b75fc41ab57efd9360fc3fce67ed258121de18e1a91812342e8da5ae6"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/LicenseModule.xcframework.zip",
            checksum: "fa8c7ad6eec54eef2a1fd69c0ba98e09473dc6cea982bd8cbded1ed844aed3c4"
        ),
    ]
)
