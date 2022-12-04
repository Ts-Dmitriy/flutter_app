part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class AppStartedEvent extends AppEvent {}

class UserAuthedAppEvent extends AppEvent {}

class LocaleInitAppEvent extends AppEvent {}

class LogoutAppEvent extends AppEvent {}

class DeleteAppEvent extends AppEvent {}