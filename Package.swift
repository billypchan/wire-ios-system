// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WireSystem",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WireSystem",
            targets: ["WireSystem"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
                    name: "WireSystem",
                    url: "https://github.com/billypchan/wire-ios-system/releases/download/32.0.21/WireSystem.xcframework.zip",
                    checksum: "4c45de069f2b959e972fe567337fe82ae9d3b47ca7aa46fc0e09e77dfbd7f5ea"),
//        .target(
//            name: "WireSystem",
//            dependencies: []),
        .testTarget(
            name: "WireSystem Tests",
            dependencies: ["WireSystem"]),
    ]
)
