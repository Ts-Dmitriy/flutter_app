part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class LoadingProfileState extends ProfileState {}

class LoadedProfileState extends ProfileState {
  final Profile profile;
  LoadedProfileState(this.profile);
}

class FailureProfileState extends ProfileState {}