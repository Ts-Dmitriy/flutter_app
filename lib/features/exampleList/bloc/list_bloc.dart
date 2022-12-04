import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/example_list.dart';
import '../resources/example_repository.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListRepository _repository = ListRepository();
  ListBloc() : super(ListInitial()) {
   on<FetchedListEvent>(_repository.getListData);
  }
}
