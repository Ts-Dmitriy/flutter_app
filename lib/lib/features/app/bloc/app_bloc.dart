import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:prog1/features/app/resources/app_repository.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final _repository = AppRepository();
  AppBloc() : super(AppInitial()) {
    on<LocaleInitAppEvent>(_repository.onLocaleInitAppEvent);
    on<AppStartedEvent>(_repository.onAppStartedEvent);
    on<UserAuthedAppEvent>(_repository.onUserAuthedAppEvent);
  }
}
