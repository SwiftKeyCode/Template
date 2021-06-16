// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KeyCodeTemplate",
	platforms: [
		.macOS(.v11),
	],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KeyCodeTemplate",
            targets: ["KeyCodeTemplate"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
		.package(name: "KeyCode", url: "https://github.com/SwiftKeyCode/SwiftKeyCode", .branch("main")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "KeyCodeTemplate",
			dependencies: [.product(name: "KeyCode", package: "KeyCode")]),
        .testTarget(
            name: "KeyCodeTemplateTests",
            dependencies: ["KeyCodeTemplate"]),
    ]
)
