// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "Fastlane",
    products: [
        .library(name: "Fastlane", targets: ["Fastlane"])
    ],
    dependencies: [
        .package(url: "https://github.com/kareman/SwiftShell", .upToNextMajor(from: "5.1.0"))
    ],
    targets: [
        .target(
            name: "Fastlane",
            dependencies: ["SwiftShell"],
            path: "./fastlane/swift",
            exclude: ["Actions.swift", "Plugins.swift", "main.swift", "formatting", "FastlaneSwiftRunner"]
        )
    ]
)
