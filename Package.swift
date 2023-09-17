// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "reality-dump",
  platforms: [
    .iOS(.v15),
    .macOS(.v12),
    .visionOS(.v1),
  ],
  products: [
    .library(
      name: "RealityDump",
      targets: ["RealityDump"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-custom-dump", from: .init(1, 0, 0)),
    .package(url: "https://github.com/apple/swift-docc-symbolkit.git", branch: "main"),
  ],
  targets: [
    .target(
      name: "RealityDump",
      dependencies: [
        .product(name: "CustomDump", package: "swift-custom-dump")
      ]
    ),
    .testTarget(
      name: "RealityDumpTests",
      dependencies: [
        "RealityDump",
        .product(name: "SymbolKit", package: "swift-docc-symbolkit"),
      ],
      resources: [
        .copy("Resources/xrOS/"),
        .copy("Resources/iOS/"),
        .copy("Resources/macOS/")
      ]
    ),
  ]
)
