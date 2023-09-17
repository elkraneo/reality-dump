import Foundation
import SymbolKit
import TabularData

func generate_something() throws {
  let url_iOS = Bundle.module.url(
    forResource: "RealityFoundation.symbols",
    withExtension: "json",
    subdirectory: "iOS"
  )!

  let data = try Data(contentsOf: url_iOS)
  let symbolGraph = try JSONDecoder().decode(SymbolGraph.self, from: data)
  let titles = symbolGraph.symbols.values
    .filter({ $0.kind.identifier == .struct })
    .filter({ $0.names.title.contains("Component") })
    .map(\.names.title)
    .sorted()
  
  var dataFrame_iOS = DataFrame()
  //dataFrame_iOS.
  

  //  var dataFrame_iOS = try DataFrame(jsonData: data, columns: ["iOS"], types: ["Graph": SymbolGraph], options: [])
  //
  //  let dataFrame_iOS = try DataFrame(contentsOfJSONFile: url_iOS, columns: ["iOS"], types: ["Sometihng" : JSONType.object], options: .init())

//  let dataFrame_iOS = try DataFrame(jsonData: data, columns: ["iOS"], types: ["Title": .string], options: .init())
  print(dataFrame_iOS)

  //
  //  let symbolGraph = try JSONDecoder().decode(SymbolGraph.self, from: data)
  //  let titles = symbolGraph.symbols.values
  //    .filter({ $0.kind.identifier == .struct })
  //    .filter({ $0.names.title.contains("Component") })
  //    .map(\.names.title)
  //    .sorted()
}
