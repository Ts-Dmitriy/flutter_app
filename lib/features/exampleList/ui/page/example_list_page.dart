import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../model/example_list.dart';
import '../../bloc/list_bloc.dart';

class ExampleListPage extends StatefulWidget {
  const ExampleListPage({super.key});

  @override
  State<ExampleListPage> createState() => _ExampleListPageState();
}

class _ExampleListPageState extends State<ExampleListPage> {
  late ListBloc listBloc;
  List<ExampleList> exampleList = [];

  @override
  void initState() {
    listBloc = ListBloc();
    listBloc.add(FetchedListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder(
        bloc: listBloc,
        builder: (context, state) {
          if (state is LoadingListState) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
          if (state is LoadedListState) {
            exampleList = state.exampleList;
            return buildBody();
          }
          if (state is FailureProfileState) {
            return Center(
              child: Text("Error"),
            );
          }
          return Container();
        },
      ),
    );
  }

  Widget buildBody() {
    List<Widget> children = [];
    for (var item in exampleList) {
      children.add(
        Stack(
          children: [
            Text(item.title),
          ],
        ),
      );
    }
    return Center(
      child: SingleChildScrollView(
        child: Column(children: children),
      ),
    );
  }
}