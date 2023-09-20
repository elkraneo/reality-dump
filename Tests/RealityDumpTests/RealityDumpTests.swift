import SymbolKit
import XCTest

@testable import RealityDump

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
private func iOSSymbolGraph() -> SymbolGraph {
  let url = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "iOS"
  )!
  let data = try! Data(contentsOf: url)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
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
private func macOSSymbolGraph() -> SymbolGraph {
  let url = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "macOS"
  )!
  let data = try! Data(contentsOf: url)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
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
private func xrOSSymbolGraph() -> SymbolGraph {
  let url = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "xrOS"
  )!
  let data = try! Data(contentsOf: url)
  let symbolGraph = try! JSONDecoder().decode(SymbolGraph.self, from: data)
  return symbolGraph
}

//MARK: -

final class RealityDumpTests: XCTestCase {

  func test_components_iOS_symbolGraph() throws {
    let titles = extractComponents(from: iOSSymbolGraph())
      .map(\.names.title)
      .sorted()

    XCTAssertEqual(titles.count, 19)
    XCTAssertEqual(titles, expectedComponents_iOS)
  }

  func test_components_macOS_symbolGraph() throws {
    let titles = extractComponents(from: macOSSymbolGraph())
      .map(\.names.title)
      .sorted()

    XCTAssertEqual(titles.count, 17)
    XCTAssertEqual(titles, expectedComponents_macOS)
  }

  func test_components_xrOS_symbolGraph() throws {
    let titles = extractComponents(from: xrOSSymbolGraph())
      .map(\.names.title)
      .sorted()

    XCTAssertEqual(titles.count, 31)
    XCTAssertEqual(titles, expectedComponents_xrOS)

    let n = extractEntities(from: xrOSSymbolGraph())
      .map(\.names.title)
      .sorted()
    
    dump(n)
  }

  // MARK: -

  func test_components_iOS_intersection_macOS() throws {
    let iOS = Set(expectedComponents_iOS)
    let macOS = Set(expectedComponents_macOS)

    let common = iOS.intersection(macOS)

    XCTAssertEqual(iOS.count, 19)
    XCTAssertEqual(macOS.count, 17)
    XCTAssertEqual(common.count, 17)
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
    XCTAssertEqual(macOS.count, 17)
    XCTAssertEqual(xrOS.count, 31)
    XCTAssertEqual(common.count, 12)
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

    XCTAssertEqual(iOS.count, 19)
    XCTAssertEqual(xrOS.count, 31)
    XCTAssertEqual(common.count, 13)
    XCTAssertNotEqual(common.sorted(), iOS.sorted())  // > Claim: iOS is NOT a subset of xrOS

    let substracted = iOS.subtracting(xrOS)
    XCTAssertEqual(
      substracted.sorted(),
      substractedComponents_iOS_xrOS
    )  // > Claim: missing components on xrOS are due to a different light model (IBL) and privacy concerns
  }

  func test_components_common() throws {
    let titles_iOS = extractComponents(from: iOSSymbolGraph()).map(\.names.title).sorted()
    let titles_macOS = extractComponents(from: macOSSymbolGraph()).map(\.names.title).sorted()
    let titles_xrOS = extractComponents(from: xrOSSymbolGraph()).map(\.names.title).sorted()

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let common = iOS.intersection(macOS).intersection(xrOS)
    XCTAssertEqual(common.count, 12)
  }

  func test_components_iOS_exclusive() throws {
    let titles_iOS = extractComponents(from: iOSSymbolGraph()).map(\.names.title).sorted()
    let titles_macOS = extractComponents(from: macOSSymbolGraph()).map(\.names.title).sorted()
    let titles_xrOS = extractComponents(from: xrOSSymbolGraph()).map(\.names.title).sorted()

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let unique = iOS.subtracting(macOS).subtracting(xrOS)
    XCTAssertEqual(unique.count, 1)
    XCTAssertEqual(Array(unique.sorted()), exclusiveComponents_iOS)
  }

  func test_components_macOS_exclusive() throws {
    let titles_iOS = extractComponents(from: iOSSymbolGraph()).map(\.names.title).sorted()
    let titles_macOS = extractComponents(from: macOSSymbolGraph()).map(\.names.title).sorted()
    let titles_xrOS = extractComponents(from: xrOSSymbolGraph()).map(\.names.title).sorted()

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let unique = macOS.subtracting(xrOS).subtracting(iOS)
    XCTAssertEqual(unique.count, 0)
    XCTAssertEqual(Array(unique.sorted()), exclusiveComponents_macOS)
  }

  func test_components_xrOS_exclusive() throws {
    let titles_iOS = extractComponents(from: iOSSymbolGraph()).map(\.names.title).sorted()
    let titles_macOS = extractComponents(from: macOSSymbolGraph()).map(\.names.title).sorted()
    let titles_xrOS = extractComponents(from: xrOSSymbolGraph()).map(\.names.title).sorted()

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let unique = xrOS.subtracting(iOS).subtracting(macOS)

    XCTAssertEqual(unique.count, 18)
    XCTAssertEqual(Array(unique.sorted()), exclusiveComponents_xrOS)
  }

  func test_components_all() throws {
    let titles_iOS = extractComponents(from: iOSSymbolGraph()).map(\.names.title).sorted()
    let titles_macOS = extractComponents(from: macOSSymbolGraph()).map(\.names.title).sorted()
    let titles_xrOS = extractComponents(from: xrOSSymbolGraph()).map(\.names.title).sorted()

    let iOS = Set(titles_iOS)
    let macOS = Set(titles_macOS)
    let xrOS = Set(titles_xrOS)

    let all = iOS.union(macOS).union(xrOS)

    XCTAssertEqual(all.count, 37)
    XCTAssertEqual(Array(all.sorted()), allComponents)
  }
}

// MARK: - Extract

private func extractComponents(from symbolGraph: SymbolGraph) -> [SymbolGraph.Symbol] {
  let componentIdentifier = symbolGraph.symbols.values
    .first(where: { $0.names.title == "Component" })?
    .identifier.precise

  let conformingIdentifiers = symbolGraph.relationships
    .filter({ $0.kind == .conformsTo })
    .filter({ $0.target == componentIdentifier })
    .map(\.source)

  let components =
    conformingIdentifiers.compactMap { identifier in
      symbolGraph.symbols.values
        .filter({ $0.kind.identifier == .struct })
        .first(where: { $0.identifier.precise == identifier })
    }

  return components
}

private func extractEntities(from symbolGraph: SymbolGraph) -> [SymbolGraph.Symbol] {
  let entityIdentifier = symbolGraph.symbols.values
    .first(where: { $0.names.title == "Entity" })?
    .identifier.precise

  let subclassesIdentifiers = symbolGraph.relationships
    .filter({ $0.kind == .inheritsFrom })
    .filter({ $0.target == entityIdentifier })
    .map(\.source)

  let entities = subclassesIdentifiers.compactMap { identifier in
    symbolGraph.symbols.values
      .filter({ $0.kind.identifier == .class })
      .first(where: { $0.identifier.precise == identifier })
  }

  return entities
}

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
