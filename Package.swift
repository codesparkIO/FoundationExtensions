// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FoundationExtensions",
    products: [
        .library(
            name: "FoundationExtensions",
            targets: ["FoundationExtensions"])
    ],
    targets: [
        .target(
            name: "FoundationExtensions",
            dependencies: ["StringExtensions"]),
        .target(
            name: "StringExtensions",
            path: "Sources/String"),
        .testTarget(
            name: "StringExtensionsTests",
            dependencies: [
                "StringExtensions",
                "CollectionExtensions"]),
        .target(
            name: "CollectionExtensions",
            path: "Sources/Collection"),
        .testTarget(
            name: "CollectionExtensionsTests",
            dependencies: ["CollectionExtensions"])
    ]
)
