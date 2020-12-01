// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WorldGreetings",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WorldGreetings",
            targets: ["WorldGreetings"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WorldGreetings",
            dependencies: []),
        .testTarget(
            name: "WorldGreetingsTests",
            dependencies: ["WorldGreetings"]),
    ]
)
