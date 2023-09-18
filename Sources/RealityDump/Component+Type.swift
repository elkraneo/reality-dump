import RealityKit

/**
 ```
 gyb Component+Type.swift.gyb \
   -o Component+Type.swift \
   --line-directive ''
 ```
 */

#if os(iOS)

  // MARK: - iOS

  let componentTypes: [Component.Type] = [
    AccessibilityComponent.self,
    AnchoringComponent.self,
    BodyTrackingComponent.self,
    CharacterControllerComponent.self,
    CharacterControllerStateComponent.self,
    CollisionComponent.self,
    DirectionalLightComponent.self,
    DirectionalLightComponent.Shadow.self,
    ModelComponent.self,
    ModelDebugOptionsComponent.self,
    PerspectiveCameraComponent.self,
    PhysicsBodyComponent.self,
    PhysicsMotionComponent.self,
    PointLightComponent.self,
    SceneUnderstandingComponent.self,
    SpotLightComponent.self,
    SpotLightComponent.Shadow.self,
    SynchronizationComponent.self,
    Transform.self,
  ]
#elseif os(macOS)

  // MARK: - macOS

  let componentTypes: [Component.Type] = [
    AccessibilityComponent.self,
    AnchoringComponent.self,
    CharacterControllerComponent.self,
    CharacterControllerStateComponent.self,
    CollisionComponent.self,
    DirectionalLightComponent.self,
    DirectionalLightComponent.Shadow.self,
    ModelComponent.self,
    ModelDebugOptionsComponent.self,
    PerspectiveCameraComponent.self,
    PhysicsBodyComponent.self,
    PhysicsMotionComponent.self,
    PointLightComponent.self,
    SpotLightComponent.self,
    SpotLightComponent.Shadow.self,
    SynchronizationComponent.self,
    Transform.self,
  ]

#elseif os(visionOS)

  // MARK: - visionOS

  let componentTypes: [Component.Type] = [
    AccessibilityComponent.self,
    AdaptiveResolutionComponent.self,
    AmbientAudioComponent.self,
    AnchoringComponent.self,
    AudioMixGroupsComponent.self,
    ChannelAudioComponent.self,
    CharacterControllerComponent.self,
    CharacterControllerStateComponent.self,
    CollisionComponent.self,
    GroundingShadowComponent.self,
    HoverEffectComponent.self,
    ImageBasedLightComponent.self,
    ImageBasedLightReceiverComponent.self,
    InputTargetComponent.self,
    ModelComponent.self,
    ModelDebugOptionsComponent.self,
    ModelSortGroupComponent.self,
    OpacityComponent.self,
    ParticleEmitterComponent.self,
    PerspectiveCameraComponent.self,
    PhysicsBodyComponent.self,
    PhysicsMotionComponent.self,
    PhysicsSimulationComponent.self,
    PortalComponent.self,
    SceneUnderstandingComponent.self,
    SpatialAudioComponent.self,
    SynchronizationComponent.self,
    TextComponent.self,
    Transform.self,
    VideoPlayerComponent.self,
    WorldComponent.self,
  ]

#endif
