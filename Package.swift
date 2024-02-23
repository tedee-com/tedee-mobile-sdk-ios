// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TedeeLockSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "TedeeLockSDK",
            targets: ["TedeeLockFramework"]),
    ],
    targets: [
        .binaryTarget(name: "TedeeLockFramework", path: "TedeeLock.xcframework")
    ]
)
