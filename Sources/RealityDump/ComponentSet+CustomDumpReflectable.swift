import CustomDump
import RealityKit
import RealitySymbols

extension Entity.ComponentSet: CustomDumpReflectable {
  public var customDumpMirror: Mirror {
    var componentsInEntity: [any Component] {
      var components: [any Component] = []

      //FIXME:
      fatalError()
      // for componentType in ComponentType.allCases.map(\.type) {
      //   if self.has(componentType) {
      //     components.append(self[componentType]!)
      //   }
      // }

      return components
    }
    return .init(reflecting: componentsInEntity)
  }
}
