// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftBenchmark",
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-collections-benchmark",
            from: "0.0.2"),
    ],
    targets: [
        .executableTarget(
            name: "Copy",
            dependencies: [
                .product(
                    name: "CollectionsBenchmark",
                    package: "swift-collections-benchmark"),
            ]),
        .executableTarget(
            name: "Maths",
            dependencies: [
                .product(
                    name: "CollectionsBenchmark",
                    package: "swift-collections-benchmark"),
            ]),
    ]
)
