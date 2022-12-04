part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class FetchedNewsEvent extends NewsEvent{}