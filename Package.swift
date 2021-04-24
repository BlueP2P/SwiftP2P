// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftP2P",
    platforms: [
        .macOS(.v11),
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftP2P",
            targets: ["SwiftP2P"]),
    ],
    dependencies: [ 
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftP2P",
            dependencies: ["BlueP2PKit"]),
        .binaryTarget(name: "BlueP2PKit", url: "https://raw.githubusercontent.com/BlueP2P/prebuilt/main/bluep2pkit/0.0.1-r12/BlueP2PKit.xcframework.zip", checksum: "7feb9f1539d9431a19e2819d2f2039526a5f484dfe87e7511a356d81439c4490"),
        .testTarget(
            name: "SwiftP2PTests",
            dependencies: ["SwiftP2P"]),
    ]
)
