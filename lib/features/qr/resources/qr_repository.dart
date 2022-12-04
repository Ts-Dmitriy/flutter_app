import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prog1/features/qr/bloc/qr_bloc.dart';

class QrRepository{
  Future<void> onScanedQrEvent(ScanedQrEvent event, Emitter<QrState> emit) async {
    emit(LoadingQrState());
    try {
      emit(LoadedQrState());
    }  catch (_) {
      emit(FailureQrState());
    }
  }

}