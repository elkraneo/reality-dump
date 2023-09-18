import CustomDump
import RealityKit

extension Entity.ComponentSet: CustomDumpReflectable {
  public var customDumpMirror: Mirror {
    var componentsInEntity: [any Component] {
      var components: [any Component] = []

      for componentType in componentTypes {
        if self.has(componentType) {
          components.append(self[componentType]!)
        }
      }

      return components
    }
    return .init(reflecting: componentsInEntity)
  }
}
