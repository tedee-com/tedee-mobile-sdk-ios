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
            targets: ["TedeeLockFramework", "TedeeMobileSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.8.1")),
    ],
    targets: [
        .target(name: "TedeeMobileSDK", dependencies: ["CryptoSwift"]),
        .binaryTarget(name: "TedeeLockFramework", path: "TedeeLock.xcframework")
    ]
)
