// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DocuSignAPI",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DocuSignAPI",
            targets: ["DocuSignAPI"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", .exact("0.4.0")),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.50.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "DocuSignAPI",
            dependencies: ["AnyCodable", "Vapor"],
            path: "Sources/DocuSignAPI"
        ),
    ]
)
