import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import '../../../rest_client/mobile_api.dart';
import '../../../rest_client/mobile_api_dio.dart';
import '../bloc/news_bloc.dart';

class NewsRepository {
  final _mobileClient = MobileClient(MobileApiDio().client);
  Future<void> getNewsData(FetchedNewsEvent event, Emitter<NewsState> emit) async {
    emit(LoadingNewsState());
    try {
      final getData = await _mobileClient.getNewsData();
      emit(LoadedNewsState(getData));
    } on DioError catch (_) {
      emit(FailureNewsState());
    }
  }
}