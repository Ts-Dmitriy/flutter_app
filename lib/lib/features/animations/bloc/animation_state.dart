part of 'animation_bloc.dart';

@immutable
abstract class AnimationState {}

class AnimationInitial extends AnimationState {}

class LoadingAnimationState extends AnimationState {
}

class LoadedAnimationState extends AnimationState{}

class FailureAnimationState extends AnimationState{}
