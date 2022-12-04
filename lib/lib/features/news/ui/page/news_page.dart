import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';
import 'package:prog1/model/example_list.dart';
import '../../bloc/news_bloc.dart';
import 'package:lottie/lottie.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late NewsBloc newsBloc;
  List<ExampleList?> exampleList=[];

    @override
  void initState() {
    newsBloc = NewsBloc();
    newsBloc.add(FetchedNewsEvent());
  
    super.initState();
  }


    @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
      body: BlocBuilder (
        bloc: newsBloc,
        builder: (context, state) {
          if (state is LoadingNewsState) {
            return Center(
              child:Lottie.asset('assets/animations/99297-loading-files.json'),
            );
          }
          if (state is LoadedNewsState) {
            exampleList = state.exampleList;
            return buildBody();
          }
          if (state is FailureNewsState) {
            return Center(
              child: Text("Error"),
            );
          }
          return Container();
        },
      ),
    )
    );
  }

Widget buildBody() {
  
    List<Widget> children = [];
    for (var item in exampleList) {
      children.add(
        
        Container(
          // decoration: const BoxDecoration(
            
          // ),
          child:SingleChildScrollView(
          
          child: Column(
            
          children: [
            
            SizedBox(
                  height: 20,
            ),
             Container(
              alignment: Alignment.centerLeft,
              
              child:
              
              Text.rich(
                TextSpan(
                  text: 'User: ',
                  
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: item!.id.toString(),
                        
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        
                        
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),          
                              SizedBox(
                  height: 5,
                          ),
            Container(
              alignment: Alignment.centerLeft,
              
              child:
              Text.rich(
                TextSpan(
                  text: 'Title: ',
                  
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: item.title,
                        
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        
                        
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),
            SizedBox(
                  height: 5,
                          ),
            Container(
              alignment: Alignment.centerLeft,
              
              child:
              Text.rich(
                TextSpan(
                  text: 'Message: ',
                  
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: item.body,
                        
                        style: TextStyle(
                        fontWeight: FontWeight.w400,
                        
                        
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),

              LikeButton(
                  mainAxisAlignment: MainAxisAlignment.start,
                  padding: EdgeInsets.only(top:20 ,left: 20),
                  size: 20,
                  circleColor: const CircleColor(
                      start: Colors.cyanAccent, end: Colors.cyan),
                  bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.cyanAccent,
                      dotSecondaryColor: Colors.tealAccent),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 20,
                    );
                  },
                  likeCount: 0,
                ),

          ],
        ),
        )
        )
      );
    }
    return Center(
      child: SingleChildScrollView(
        child: Column(children: children),
      ),
    );
  }
}

