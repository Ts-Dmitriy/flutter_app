
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../rest_client/mobile_api.dart';
import '../../../rest_client/mobile_api_dio.dart';
import '../bloc/profile_bloc.dart';

class ProfileRepository {
  final _mobileClient = MobileClient(MobileApiDio().client);
  Future<void> getProfileData(FetchedProfileEvent event, Emitter<ProfileState> emit) async {
    emit(LoadingProfileState());
    try {
      final getData = await _mobileClient.getProfileData();
      emit(LoadedProfileState(getData));
    } on DioError catch (_) {
      emit(FailureProfileState());
    }
  }
}