import Foundation

// MARK: - All

var allComponents: [String] {
  Set(expectedComponents_iOS + expectedComponents_macOS + expectedComponents_xrOS).sorted()
}

// MARK: - iOS

let expectedComponents_iOS = [
  "AccessibilityComponent",
  "AccessibilityComponent.CustomContent",
  "AccessibilityComponent.SupportedActions",
  "AnchoringComponent",
  "AnchoringComponent.Target.Alignment",
  "AnchoringComponent.Target.Classification",
  "BodyTrackingComponent",
  "CharacterControllerComponent",
  "CharacterControllerComponent.Collision",
  "CharacterControllerComponent.CollisionFlags",
  "CharacterControllerStateComponent",
  "CollisionComponent",
  "DirectionalLightComponent",
  "DirectionalLightComponent.Shadow",
  "ModelComponent",
  "ModelDebugOptionsComponent",
  "PerspectiveCameraComponent",
  "PhysicsBodyComponent",
  "PhysicsMotionComponent",
  "PointLightComponent",
  "SceneUnderstandingComponent",
  "SpotLightComponent",
  "SpotLightComponent.Shadow",
  "SynchronizationComponent",
  "Transform",
]

// Exclusive components from iOS
let exclusiveComponents_iOS = [
  "BodyTrackingComponent"
]

/// Components that are available in iOS, but not on macOS.
let substractedComponents_iOS_macOS = [
  "AnchoringComponent.Target.Alignment",
  "AnchoringComponent.Target.Classification",
  "BodyTrackingComponent",
  "SceneUnderstandingComponent",
]

/// Components that are available in iOS, but not on xrOS.
let substractedComponents_iOS_xrOS = [
  "BodyTrackingComponent",
  "DirectionalLightComponent",
  "DirectionalLightComponent.Shadow",
  "PointLightComponent",
  "SpotLightComponent",
  "SpotLightComponent.Shadow",
]

// MARK: - macOS

let expectedComponents_macOS = [
  "AccessibilityComponent",
  "AccessibilityComponent.CustomContent",
  "AccessibilityComponent.SupportedActions",
  "AnchoringComponent",
  "CharacterControllerComponent",
  "CharacterControllerComponent.Collision",
  "CharacterControllerComponent.CollisionFlags",
  "CharacterControllerStateComponent",
  "CollisionComponent",
  "DirectionalLightComponent",
  "DirectionalLightComponent.Shadow",
  "ModelComponent",
  "ModelDebugOptionsComponent",
  "PerspectiveCameraComponent",
  "PhysicsBodyComponent",
  "PhysicsMotionComponent",
  "PointLightComponent",
  "SpotLightComponent",
  "SpotLightComponent.Shadow",
  "SynchronizationComponent",
  "Transform",
]

// Exclusive components from macOS
let exclusiveComponents_macOS: [String] = []

/// Components that are available in macOS, but not on xrOS.
let substractedComponents_macOS_xrOS = [
  "DirectionalLightComponent",
  "DirectionalLightComponent.Shadow",
  "PointLightComponent",
  "SpotLightComponent",
  "SpotLightComponent.Shadow",
]

// MARK: - visionOS

let expectedComponents_xrOS = [
  "AccessibilityComponent",
  "AccessibilityComponent.CustomContent",
  "AccessibilityComponent.SupportedActions",
  "AdaptiveResolutionComponent",
  "AmbientAudioComponent",
  "AnchoringComponent",
  "AnchoringComponent.Target.Alignment",
  "AnchoringComponent.Target.Classification",
  "AnchoringComponent.Target.HandLocation",
  "AnchoringComponent.TrackingMode",
  "AudioMixGroupsComponent",
  "ChannelAudioComponent",
  "CharacterControllerComponent",
  "CharacterControllerComponent.Collision",
  "CharacterControllerComponent.CollisionFlags",
  "CharacterControllerStateComponent",
  "CollisionComponent",
  "CollisionComponent.CollisionOptions",
  "GroundingShadowComponent",
  "HoverEffectComponent",
  "ImageBasedLightComponent",
  "ImageBasedLightReceiverComponent",
  "InputTargetComponent",
  "InputTargetComponent.InputType",
  "ModelComponent",
  "ModelDebugOptionsComponent",
  "ModelSortGroupComponent",
  "OpacityComponent",
  "ParticleEmitterComponent",
  "ParticleEmitterComponent.ParticleEmitter",
  "ParticleEmitterComponent.ParticleEmitter.ImageSequence",
  "PerspectiveCameraComponent",
  "PhysicsBodyComponent",
  "PhysicsMotionComponent",
  "PhysicsSimulationComponent",
  "PhysicsSimulationComponent.CollisionOptions",
  "PortalComponent",
  "PortalComponent.ClippingPlane",
  "SceneUnderstandingComponent",
  "SpatialAudioComponent",
  "SynchronizationComponent",
  "TextComponent",
  "Transform",
  "VideoPlayerComponent",
  "WorldComponent",
]

let exclusiveComponents_xrOS = [
  "AdaptiveResolutionComponent",
  "AmbientAudioComponent",
  "AnchoringComponent.Target.HandLocation",
  "AnchoringComponent.TrackingMode",
  "AudioMixGroupsComponent",
  "ChannelAudioComponent",
  "CollisionComponent.CollisionOptions",
  "GroundingShadowComponent",
  "HoverEffectComponent",
  "ImageBasedLightComponent",
  "ImageBasedLightReceiverComponent",
  "InputTargetComponent",
  "InputTargetComponent.InputType",
  "ModelSortGroupComponent",
  "OpacityComponent",
  "ParticleEmitterComponent",
  "ParticleEmitterComponent.ParticleEmitter",
  "ParticleEmitterComponent.ParticleEmitter.ImageSequence",
  "PhysicsSimulationComponent",
  "PhysicsSimulationComponent.CollisionOptions",
  "PortalComponent",
  "PortalComponent.ClippingPlane",
  "SpatialAudioComponent",
  "TextComponent",
  "VideoPlayerComponent",
  "WorldComponent",
]
