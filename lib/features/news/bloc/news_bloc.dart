import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:prog1/model/example_list.dart';

import '../resources/news_repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepository _repository = NewsRepository();
  NewsBloc() : super(NewsInitial()) {
    on<FetchedNewsEvent>(_repository.getNewsData);
  }
}
