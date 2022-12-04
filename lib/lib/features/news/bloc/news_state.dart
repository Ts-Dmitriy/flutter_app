part of 'news_bloc.dart';


@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}
class LoadingNewsState extends NewsState {}

class LoadedNewsState extends NewsState {
  final List<ExampleList> exampleList;
  LoadedNewsState(this.exampleList);
}

class FailureNewsState extends NewsState {}