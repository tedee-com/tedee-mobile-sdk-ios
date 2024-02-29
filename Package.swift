// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TedeeMobileSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
    ],
    products: [
        .library(
            name: "TedeeMobileSDK",
            targets: ["TedeeLockFramework"]),
    ],
    targets: [
        .binaryTarget(name: "TedeeLockFramework", path: "TedeeLock.xcframework")
    ]
)
