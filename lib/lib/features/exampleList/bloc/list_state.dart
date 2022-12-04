part of 'list_bloc.dart';

@immutable
abstract class ListState {}

class ListInitial extends ListState {}

class LoadingListState extends ListState {}

class LoadedListState extends ListState {
  final List<ExampleList> exampleList;
  LoadedListState(this.exampleList);
}

class FailureProfileState extends ListState {}