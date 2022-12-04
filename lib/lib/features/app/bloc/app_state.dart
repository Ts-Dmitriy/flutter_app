part of 'app_bloc.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class LoadingAppState extends AppState {}

class LocaleInitAppState extends AppState {}

class UnAuthAppState extends AppState {}

class AuthAppState extends AppState {}

class FailureAppState extends AppState {
  final String? error;
  FailureAppState ({this.error});
}

class DeleteAppState extends AppState {}
