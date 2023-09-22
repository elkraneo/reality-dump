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
    .package(url: "https://github.com/pointfreeco/swift-custom-dump", from: "1.0.0"),
    .package(url: "https://github.com/elkraneo/reality-symbols", branch: "main"),
  ],
  targets: [
    .target(
      name: "RealityDump",
      dependencies: [
        .product(name: "CustomDump", package: "swift-custom-dump"),
        .product(name: "RealitySymbols", package: "reality-symbols"),
      ]
    ),
    .testTarget(
      name: "RealityDumpTests",
      dependencies: [
        "RealityDump"
      ]
    ),
  ]
)
