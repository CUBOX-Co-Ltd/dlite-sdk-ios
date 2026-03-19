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
            checksum: "0187e009ca6445692e5dae7747b1a4fa7bc81503e9261775335a2f062f4b0cab"
        ),
        .binaryTarget(
            name: "Cameramodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/Cameramodule.xcframework.zip",
            checksum: "26189483d7e8dcf6c4600e59940d4f6825d0bdd1e7df79099bc7ccf9dfc9fdf9"
        ),
        .binaryTarget(
            name: "Inferencemodule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/Inferencemodule.xcframework.zip",
            checksum: "cba78684dc511cff30d775d46a1093965b0abd8ff0546d44ad64970ef2d2b7b2"
        ),
        .binaryTarget(
            name: "LicenseModule",
            url: "https://github.com/CUBOX-Co-Ltd/dlite-sdk-ios/releases/download/2.0.0-beta/LicenseModule.xcframework.zip",
            checksum: "ccdeea4544b275a35e33090d3272a96002daf7cb732ca58380d034084853bd71"
        ),
    ]
)
