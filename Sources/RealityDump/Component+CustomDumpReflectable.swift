import CustomDump
import RealityKit

/**
 ```
 gyb Component+CustomDumpReflectable.swift.gyb \
   -o Component+CustomDumpReflectable.swift \
   --line-directive ''
 ```
 */

#if os(iOS)

  // MARK: - iOS

  extension AccessibilityComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AnchoringComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension BodyTrackingComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerStateComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CollisionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension DirectionalLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension DirectionalLightComponent.Shadow: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelDebugOptionsComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PerspectiveCameraComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsBodyComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsMotionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PointLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SceneUnderstandingComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SpotLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SpotLightComponent.Shadow: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SynchronizationComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension Transform: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

#elseif os(macOS)

  // MARK: - macOS

  extension AccessibilityComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AnchoringComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerStateComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CollisionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension DirectionalLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension DirectionalLightComponent.Shadow: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelDebugOptionsComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PerspectiveCameraComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsBodyComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsMotionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PointLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SpotLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SpotLightComponent.Shadow: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SynchronizationComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension Transform: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

#elseif os(visionOS)

  // MARK: - visionOS

  extension AccessibilityComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AdaptiveResolutionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AmbientAudioComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AnchoringComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AudioMixGroupsComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ChannelAudioComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerStateComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CollisionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension GroundingShadowComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension HoverEffectComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ImageBasedLightComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ImageBasedLightReceiverComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension InputTargetComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelDebugOptionsComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ModelSortGroupComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension OpacityComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ParticleEmitterComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PerspectiveCameraComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsBodyComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsMotionComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PhysicsSimulationComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension PortalComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SceneUnderstandingComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SpatialAudioComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension SynchronizationComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension TextComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension Transform: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension VideoPlayerComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension WorldComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

#endif
