// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ARCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ARCoreAugmentedFaces", targets: ["ARCoreAugmentedFaces"]),
        .library(name: "ARCoreBase", targets: ["ARCoreBase_Swift"]),
        .library(name: "ARCoreCloudAnchors", targets: ["ARCoreCloudAnchors"]),
        .library(name: "ARCoreGARSession", targets: ["ARCoreGARSession"]),
        .library(name: "ARCoreGeospatial", targets: ["ARCoreGeospatial"]),
    ],
    dependencies: [
        .package(url: "https://github.com/google/GoogleDataTransport.git", from: .init(9, 1, 2))
    ],
    targets: [
        .binaryTarget(
            name: "ARCoreAugmentedFaces",
            url: "https://github.com/maxxfrazer/ARCore/releases/download/1.31.0-rc.1/ARCoreAugmentedFaces.xcframework.zip",
            checksum: "70e9f2a65008508e86af3a0ea20e309df3bc00745451e2c21b3612c7f8f15bf6"
        ),
        .target(
            name: "ARCoreBase_Swift",
            dependencies: ["ARCoreBase", "GoogleDataTransport"],
            path: "Sources/ARCoreBase", publicHeadersPath: "Headers/ARCoreBase"
        ),
        .binaryTarget(
            name: "ARCoreBase",
            url: "https://github.com/maxxfrazer/ARCore/releases/download/1.31.0-rc.1/ARCoreBase.xcframework.zip",
            checksum: "74ce619d4bb3effc71a493bded74204348eec9f684a3fcb708e57f84083105c2"
        ),
        .binaryTarget(
            name: "ARCoreCloudAnchors",
            url: "https://github.com/maxxfrazer/ARCore/releases/download/1.31.0-rc.1/ARCoreCloudAnchors.xcframework.zip",
            checksum: "f787a823f9da845806c8032174e7ef0daafe4379832b85ed83ccfb732dc258fb"
        ),
        .binaryTarget(
            name: "ARCoreGARSession",
            url: "https://github.com/maxxfrazer/ARCore/releases/download/1.31.0-rc.1/ARCoreGARSession.xcframework.zip",
            checksum: "84b2f659d902709f740415eb1589c9bca1592258f59148ed083c50be5e5d6764"
        ),
        .binaryTarget(
            name: "ARCoreGeospatial",
            url: "https://github.com/maxxfrazer/ARCore/releases/download/1.31.0-rc.1/ARCoreGeospatial.xcframework.zip",
            checksum: "6809803e425860b04bd0d983a2201f632d9aa4bd2fafaf8314285616268d6f04"
        )
    ]
)

