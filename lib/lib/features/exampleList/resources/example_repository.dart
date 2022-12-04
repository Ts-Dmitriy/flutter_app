import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../rest_client/mobile_api.dart';
import '../../../rest_client/mobile_api_dio.dart';
import '../bloc/list_bloc.dart';

class ListRepository {
  final _mobileClient = MobileClient(MobileApiDio().client);

  Future<void> getListData(FetchedListEvent event, Emitter<ListState> emit) async {
    emit(LoadingListState());
    try {
      final getListData = await _mobileClient.getListData();
      emit(LoadedListState(getListData));
    } on DioError catch (_) {
      emit(FailureProfileState());
    }
  }
}