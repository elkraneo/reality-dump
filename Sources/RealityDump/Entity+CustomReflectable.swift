import CustomDump
import RealityKit
import SwiftUI

extension RealityKit.Entity: CustomDumpReflectable {
  public var customDumpMirror: Mirror {
    .init(
      self,
      children: [
        /// Identity
        "scene": self.scene?.name,
        "name": self.name,
        "id": self.id,

        /// State
        "isEnabled": self.isEnabled,
        "isEnabledInHierarchy": self.isEnabledInHierarchy,
        "isActive": self.isActive,
        "isAnchored": self.isAnchored,

        /// Hierarchy
        "parentID": self.parent?.id,
        "children": self.children.map({ $0 }),

        ///Components
        "components": self.components,

        /// Synchronization
        //TODO: "synchronization": self.synchronization,
        //TODO: "isOwner": self.isOwner,

        ///Nearest Anchor
        //TODO: "anchor": self.anchor,

        ///Animations
        // "availableAnimations": self.availableAnimations,

        ///Animating an Entity
        //TODO: "defaultAnimationClock": self.defaultAnimationClock,
        //TODO: "bindableValues": self.bindableValues,
        //TODO: "parameters": self.parameters,

        ///Animating and Controlling Characters
        //TODO: "characterController": self.characterController,
        //TODO: "characterControllerState": self.characterControllerState,

        ///Accessibility
        "isAccessibilityElement": self.isAccessibilityElement,

          //TODO: Instance Properties
      ],
      displayStyle: .struct
    )
  }
}

extension RealityKit.AnimationResource: CustomDumpReflectable {
  public var customDumpMirror: Mirror {
    .init(
      self,
      children: [
        "name": self.name,
        "definition": self.definition,
      ]
    )
  }
}

//TODO: describe the conforming types of AnimationDefinition
//https://developer.apple.com/documentation/realitykit/animationdefinition
//AnimationGroup
//AnimationView
//BlendTreeAnimation
//FromToByAnimation
//OrbitAnimation
//SampledAnimation
//extension RealityKit.AnimationDefinition: CustomDumpReflectable {
//  public var customDumpMirror: Mirror {
//    .init(
//      self,
//      children: [
//        "name": self.name,
//        "bindTarget": self.bindTarget,
//        "blendLayer": self.blendLayer,
//        "speed": self.speed,
//        "delay": self.delay,
//        "duration": self.duration,
//        "offset": self.offset,
//        "trimDuration": self.trimDuration,
//        "trimStart": self.trimStart,
//        "trimEnd": self.trimEnd,
//      ]
//    )
//  }
//}
