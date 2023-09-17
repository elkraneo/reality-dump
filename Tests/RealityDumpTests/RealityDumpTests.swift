import SymbolKit
import XCTest

@testable import RealityDump

final class RealityDumpTests: XCTestCase {
  /**
   ```
   swift symbolgraph-extract \
    -module-name RealityFoundation \
    -target arm64-apple-ios17.0 \
    -output-dir ~/Desktop \
    -pretty-print \
    -sdk /Applications/Xcode-15.0.0-Release.Candidate.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS17.0.sdk
   ```
   */
  func test_iOS_symbolGraph() throws {
    let url = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "iOS"
    )!
    let data = try Data(contentsOf: url)
    let symbolGraph = try JSONDecoder().decode(SymbolGraph.self, from: data)
    let titles = extractComponentsTitles(from: symbolGraph)

    XCTAssertEqual(titles.count, 25)
    XCTAssertEqual(titles, expectedComponents_iOS)
  }

  /**
   ```
   swift symbolgraph-extract \
    -module-name RealityFoundation \
    -target arm64-apple-macos14.0 \
    -output-dir ~/Desktop \
    -pretty-print \
    -sdk /Applications/Xcode-15.0.0-Release.Candidate.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX14.0.sdk
   ```
   */
  func test_macOS_symbolGraph() throws {
    let url = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "macOS"
    )!
    let data = try Data(contentsOf: url)
    let symbolGraph = try JSONDecoder().decode(SymbolGraph.self, from: data)
    let titles = extractComponentsTitles(from: symbolGraph)

    XCTAssertEqual(titles.count, 21)
    XCTAssertEqual(titles, expectedComponents_macOS)
  }

  /**
   ```
   swift symbolgraph-extract \
    -module-name RealityFoundation \
    -target arm64-apple-xros1.0 \
    -output-dir ~/Desktop \
    -pretty-print \
    -sdk /Applications/Xcode-15.0.0-Beta.8.app/Contents/Developer/Platforms/XROS.platform/Developer/SDKs/XROS1.0.sdk
   ```
   */
  func test_xrOS_components_symbolGraph() throws {
    let url = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "xrOS"
    )!
    let data = try Data(contentsOf: url)
    let symbolGraph = try JSONDecoder().decode(SymbolGraph.self, from: data)
    let titles = extractComponentsTitles(from: symbolGraph)

    XCTAssertEqual(titles.count, 45)
    XCTAssertEqual(titles, expectedComponents_xrOS)
  }

  // MARK: -

  func test_components_iOS_intersection_macOS() throws {
    let iOS = Set(expectedComponents_iOS)
    let macOS = Set(expectedComponents_macOS)

    let common = iOS.intersection(macOS)

    XCTAssertEqual(iOS.count, 25)
    XCTAssertEqual(macOS.count, 21)
    XCTAssertEqual(common.count, 21)
    XCTAssertEqual(common.sorted(), macOS.sorted())  // > Claim: macOS is a subset of iOS

    let substracted = iOS.subtracting(macOS)
    XCTAssertEqual(
      substracted.sorted(),
      substractedComponents_iOS_macOS
    )  // > Claim: missing components on macOS require ARKit which is not available
  }

  func test_components_macOS_intersection_xrOS() throws {
    let macOS = Set(expectedComponents_macOS)
    let xrOS = Set(expectedComponents_xrOS)

    let common = macOS.intersection(xrOS)
    XCTAssertEqual(macOS.count, 21)
    XCTAssertEqual(xrOS.count, 45)
    XCTAssertEqual(common.count, 16)
    XCTAssertNotEqual(common.sorted(), macOS.sorted())  // > Claim: macOS is NOT a subset of xrOS

    let substracted = macOS.subtracting(xrOS)
    XCTAssertEqual(
      substracted.sorted(),
      substractedComponents_macOS_xrOS
    )  // > Claim: missing components on xrOS are due to a different light model (IBL)
  }

  func test_components_iOS_intersection_xrOS() throws {
    let iOS = Set(expectedComponents_iOS)
    let xrOS = Set(expectedComponents_xrOS)

    let common = iOS.intersection(xrOS)

    XCTAssertEqual(iOS.count, 25)
    XCTAssertEqual(xrOS.count, 45)
    XCTAssertEqual(common.count, 19)
    XCTAssertNotEqual(common.sorted(), iOS.sorted())  // > Claim: iOS is NOT a subset of xrOS

    let substracted = iOS.subtracting(xrOS)
    XCTAssertEqual(
      substracted.sorted(),
      substractedComponents_iOS_xrOS
    )  // > Claim: missing components on xrOS are due to a different light model (IBL) and privacy concerns
  }

  func test_components_common() throws {
    let url_iOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "iOS"
    )!
    let data_iOS = try Data(contentsOf: url_iOS)
    let symbolGraph_iOS = try JSONDecoder().decode(SymbolGraph.self, from: data_iOS)
    let titles_iOS = extractComponentsTitles(from: symbolGraph_iOS)

    let url_macOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "macOS"
    )!
    let data_macOS = try Data(contentsOf: url_macOS)
    let symbolGraph_macOS = try JSONDecoder().decode(SymbolGraph.self, from: data_macOS)
    let titles_macOS = extractComponentsTitles(from: symbolGraph_macOS)

    let url_xrOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "xrOS"
    )!
    let data_xrOS = try Data(contentsOf: url_xrOS)
    let symbolGraph_xrOS = try JSONDecoder().decode(SymbolGraph.self, from: data_xrOS)
    let titles_xrOS = extractComponentsTitles(from: symbolGraph_xrOS)

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let common = iOS.intersection(macOS).intersection(xrOS)
    XCTAssertEqual(common.count, 16)
  }

  func test_components_iOS_exclusive() throws {
    let url_iOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "iOS"
    )!
    let data_iOS = try Data(contentsOf: url_iOS)
    let symbolGraph_iOS = try JSONDecoder().decode(SymbolGraph.self, from: data_iOS)
    let titles_iOS = extractComponentsTitles(from: symbolGraph_iOS)

    let url_macOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "macOS"
    )!
    let data_macOS = try Data(contentsOf: url_macOS)
    let symbolGraph_macOS = try JSONDecoder().decode(SymbolGraph.self, from: data_macOS)
    let titles_macOS = extractComponentsTitles(from: symbolGraph_macOS)

    let url_xrOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "xrOS"
    )!
    let data_xrOS = try Data(contentsOf: url_xrOS)
    let symbolGraph_xrOS = try JSONDecoder().decode(SymbolGraph.self, from: data_xrOS)
    let titles_xrOS = extractComponentsTitles(from: symbolGraph_xrOS)

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let unique = iOS.subtracting(macOS).subtracting(xrOS)
    XCTAssertEqual(unique.count, 1)
    XCTAssertEqual(Array(unique.sorted()), exclusiveComponents_iOS)
  }

  func test_components_macOS_exclusive() throws {
    let url_iOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "iOS"
    )!
    let data_iOS = try Data(contentsOf: url_iOS)
    let symbolGraph_iOS = try JSONDecoder().decode(SymbolGraph.self, from: data_iOS)
    let titles_iOS = extractComponentsTitles(from: symbolGraph_iOS)

    let url_macOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "macOS"
    )!
    let data_macOS = try Data(contentsOf: url_macOS)
    let symbolGraph_macOS = try JSONDecoder().decode(SymbolGraph.self, from: data_macOS)
    let titles_macOS = extractComponentsTitles(from: symbolGraph_macOS)

    let url_xrOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "xrOS"
    )!
    let data_xrOS = try Data(contentsOf: url_xrOS)
    let symbolGraph_xrOS = try JSONDecoder().decode(SymbolGraph.self, from: data_xrOS)
    let titles_xrOS = extractComponentsTitles(from: symbolGraph_xrOS)

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let unique = macOS.subtracting(xrOS).subtracting(iOS)
    XCTAssertEqual(unique.count, 0)
    XCTAssertEqual(Array(unique.sorted()), exclusiveComponents_macOS)
  }

  func test_components_xrOS_exclusive() throws {
    let url_iOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "iOS"
    )!
    let data_iOS = try Data(contentsOf: url_iOS)
    let symbolGraph_iOS = try JSONDecoder().decode(SymbolGraph.self, from: data_iOS)
    let titles_iOS = extractComponentsTitles(from: symbolGraph_iOS)

    let url_macOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "macOS"
    )!
    let data_macOS = try Data(contentsOf: url_macOS)
    let symbolGraph_macOS = try JSONDecoder().decode(SymbolGraph.self, from: data_macOS)
    let titles_macOS = extractComponentsTitles(from: symbolGraph_macOS)

    let url_xrOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "xrOS"
    )!
    let data_xrOS = try Data(contentsOf: url_xrOS)
    let symbolGraph_xrOS = try JSONDecoder().decode(SymbolGraph.self, from: data_xrOS)
    let titles_xrOS = extractComponentsTitles(from: symbolGraph_xrOS)

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let unique = xrOS.subtracting(iOS).subtracting(macOS)

    XCTAssertEqual(unique.count, 26)
    XCTAssertEqual(Array(unique.sorted()), exclusiveComponents_xrOS)
  }

  func test_components_all() throws {
    let url_iOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "iOS"
    )!
    let data_iOS = try Data(contentsOf: url_iOS)
    let symbolGraph_iOS = try JSONDecoder().decode(SymbolGraph.self, from: data_iOS)
    let titles_iOS = extractComponentsTitles(from: symbolGraph_iOS)

    let url_macOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "macOS"
    )!
    let data_macOS = try Data(contentsOf: url_macOS)
    let symbolGraph_macOS = try JSONDecoder().decode(SymbolGraph.self, from: data_macOS)
    let titles_macOS = extractComponentsTitles(from: symbolGraph_macOS)

    let url_xrOS = Bundle.module.url(
      forResource: "RealityFoundation.symbols",
      withExtension: "json",
      subdirectory: "xrOS"
    )!
    let data_xrOS = try Data(contentsOf: url_xrOS)
    let symbolGraph_xrOS = try JSONDecoder().decode(SymbolGraph.self, from: data_xrOS)
    let titles_xrOS = extractComponentsTitles(from: symbolGraph_xrOS)

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let all = iOS.union(macOS).union(xrOS)

    XCTAssertEqual(all.count, 51)
    XCTAssertEqual(Array(all.sorted()), allComponents)
  }
}

// MARK: -

private func extractComponentsTitles(from symbolGraph: SymbolGraph) -> [String] {
  let componentIdentifier = symbolGraph.symbols.values
    .first(where: { $0.names.title == "Component" })?
    .identifier.precise

  let conformingIdentifiers = symbolGraph.relationships
    .filter({ $0.kind == .conformsTo })
    .filter({ $0.target == componentIdentifier })
    .map(\.source)

  let mainLevelComponents = conformingIdentifiers.compactMap { identifier in
    symbolGraph.symbols.values
      .filter({ $0.kind.identifier == .struct })
      .first(where: { $0.identifier.precise == identifier })?
      .names.title
  }

  let allComponents =
    mainLevelComponents.flatMap { title in
      symbolGraph.symbols.values
        .filter({ $0.kind.identifier == .struct })
        .filter({ $0.pathComponents.contains(title) })
        .map(\.names.title)
    }
    .sorted()

  return allComponents

  //TODO: try to use mixins
  // let symbol = try XCTUnwrap(symbolGraph.symbols.values.first)
  // let declaration = try XCTUnwrap(symbol.mixins[SymbolGraph.Symbol.DeclarationFragments.mixinKey] as? SymbolGraph.Symbol.DeclarationFragments)
  //
  // XCTAssertTrue(declaration.declarationFragments.contains(where: { fragment in
  //     fragment.kind == .keyword && fragment.spelling == "async"
  // }))
  //
  // XCTAssertFalse(declaration.declarationFragments.contains(where: { fragment in
  //     fragment.kind == .externalParameter && fragment.spelling == "completionHandler"
  // }))
}
