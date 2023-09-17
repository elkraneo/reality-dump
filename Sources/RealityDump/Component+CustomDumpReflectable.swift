import CustomDump
import RealityKit

#if os(iOS)

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
  extension AccessibilityComponent.CustomContent: CustomDumpReflectable {}
  extension AccessibilityComponent.SupportedActions: CustomDumpReflectable {}
  extension AnchoringComponent: CustomDumpReflectable {}
  extension AnchoringComponent.Target.Alignment: CustomDumpReflectable {}
  extension AnchoringComponent.Target.Classification: CustomDumpReflectable {}
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
  extension CharacterControllerComponent: CustomDumpReflectable {}
  extension CharacterControllerComponent.Collision: CustomDumpReflectable {}
  extension CharacterControllerComponent.CollisionFlags: CustomDumpReflectable {}
  extension CharacterControllerStateComponent: CustomDumpReflectable {}
  extension CollisionComponent: CustomDumpReflectable {}
  extension ComponentEvents.DidActivate: CustomDumpReflectable {}
  extension ComponentEvents.DidAdd: CustomDumpReflectable {}
  extension ComponentEvents.DidChange: CustomDumpReflectable {}
  extension ComponentEvents.WillDeactivate: CustomDumpReflectable {}
  extension ComponentEvents.WillRemove: CustomDumpReflectable {}
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
  extension DirectionalLightComponent.Shadow: CustomDumpReflectable {}
  extension Entity.ComponentSet: CustomDumpReflectable {}
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
  extension ModelDebugOptionsComponent: CustomDumpReflectable {}
  extension PerspectiveCameraComponent: CustomDumpReflectable {}
  extension PhysicsBodyComponent: CustomDumpReflectable {}
  extension PhysicsMotionComponent: CustomDumpReflectable {}
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
  extension SceneUnderstandingComponent: CustomDumpReflectable {}
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
  extension SynchronizationComponent: CustomDumpReflectable {}

#elseif os(visionOS)

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

  extension AccessibilityComponent.CustomContent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO
        ]
      )
    }
  }
  extension AccessibilityComponent.SupportedActions: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO
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
          //TODO
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

  extension AnchoringComponent.Target.Alignment: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AnchoringComponent.Target.Classification: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AnchoringComponent.Target.HandLocation: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension AnchoringComponent.TrackingMode: CustomDumpReflectable {
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

  extension CharacterControllerComponent.Collision: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension CharacterControllerComponent.CollisionFlags: CustomDumpReflectable {
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

  extension CollisionComponent.CollisionOptions: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ComponentEvents.DidActivate: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ComponentEvents.DidAdd: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ComponentEvents.DidChange: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ComponentEvents.WillDeactivate: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ComponentEvents.WillRemove: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

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

  extension InputTargetComponent.InputType: CustomDumpReflectable {
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

  extension ParticleEmitterComponent.ParticleEmitter: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO: display children
        ]
      )
    }
  }

  extension ParticleEmitterComponent.ParticleEmitter.ImageSequence: CustomDumpReflectable {
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

  extension PhysicsSimulationComponent.CollisionOptions: CustomDumpReflectable {
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

  extension PortalComponent.ClippingPlane: CustomDumpReflectable {
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
          //TODO
        ]
      )
    }
  }

  extension TextComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO
        ]
      )
    }
  }

  extension RealityKit.Transform: CustomDumpReflectable {
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
          //TODO
        ]
      )
    }
  }

  extension WorldComponent: CustomDumpReflectable {
    public var customDumpMirror: Mirror {
      .init(
        self,
        children: [
          //TODO
        ]
      )
    }
  }

#endif
