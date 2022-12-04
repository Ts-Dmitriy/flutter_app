import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:prog1/features/qr/resources/qr_repository.dart';

part 'qr_event.dart';
part 'qr_state.dart';

class QrBloc extends Bloc<QrEvent, QrState> {
  final _repository = QrRepository();
  QrBloc() : super(QrInitial()) {
    on<ScanedQrEvent>(_repository.onScanedQrEvent) ;
    

  }
}
