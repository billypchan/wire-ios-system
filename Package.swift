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
    ],
    targets: [
        .target(
           name: "WireSystem-ObjC",
           dependencies: [],
           path: "Sources/WireSystem/",
           exclude: ["Sources/SwiftSources/"]
        ),
        .target(
            name: "WireSystem",
            dependencies: ["WireSystem-ObjC"],
            path: "Sources/SwiftSources/"
        ),
        .testTarget(
            name: "WireSystem Tests",
            dependencies: ["WireSystem"]),
    ]
)
