part of 'qr_bloc.dart';

@immutable
abstract class QrState {}

class QrInitial extends QrState {}

class ShowScanedQr extends QrState{}

class LoadingQrState extends QrState {}

class LoadedQrState extends QrState{}

class LoadedResultState extends QrState{
}

class DataLoadingError extends QrState{
    DataLoadingError(this.error);
  final String error;
  @override
  String toString() => error;
}

class FailureQrState extends QrState {}