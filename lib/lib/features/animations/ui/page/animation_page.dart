import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:like_button/like_button.dart';
import 'package:prog1/features/animations/bloc/animation_bloc.dart';
class MyAnimation extends StatefulWidget {
  @override
  State<MyAnimation> createState() => MyAnimationState();
}

class MyAnimationState extends State<MyAnimation> {
  late AnimationBloc animationBloc;

    @override
  void initState() {
    animationBloc = AnimationBloc();
    animationBloc.add(FetchedAnimationEvent());
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       body: BlocBuilder (
        bloc: animationBloc,
        builder: (context, state) {
          if (state is LoadingAnimationState) {
            return Center(
              child:Lottie.asset('assets/animations/99297-loading-files.json'),
            );
          }
          if (state is LoadedAnimationState) {
            return buildBody();
          }
          if (state is FailureAnimationState) {
            return Center(
              child: Text("Error"),
            );
          }
          return Container();
        },
      ),
    );
  }
}
Widget buildBody() {
  return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset('assets/animations/129188-planning-poker-pup.json'),
              Container(
              alignment: Alignment.centerLeft,
              child:
              Text.rich(
                TextSpan(
                  text: 'User1: ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'My first work!',
                        style: TextStyle(
                        fontWeight: FontWeight.w400, 
                     ),
                     ),
                     ],
                 ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
              LikeButton(
                  mainAxisAlignment: MainAxisAlignment.start,
                  padding: EdgeInsets.only(top:20 ,left: 20),
                  size: 30,
                  circleColor: const CircleColor(
                      start: Colors.cyanAccent, end: Colors.cyan),
                  bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.cyanAccent,
                      dotSecondaryColor: Colors.tealAccent),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 30,
                    );
                  },
                  likeCount: 0,
                ),
                Lottie.asset('assets/animations/128833-footballer.json'),
              Container(
              alignment: Alignment.centerLeft,
              child:
              Text.rich(
                TextSpan(
                  text: 'User2: ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'For World Cup!',
                        style: TextStyle(
                        fontWeight: FontWeight.w400, 
                     ),
                     ),
                     ],
                 ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
              LikeButton(
                  mainAxisAlignment: MainAxisAlignment.start,
                  padding: EdgeInsets.only(top:20 ,left: 20),
                  size: 30,
                  circleColor: const CircleColor(
                      start: Colors.cyanAccent, end: Colors.cyan),
                  bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.cyanAccent,
                      dotSecondaryColor: Colors.tealAccent),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 30,
                    );
                  },
                  likeCount: 0,
                ),
              Lottie.asset('assets/animations/128260-hands-collaboration.json'),
              Container(
              alignment: Alignment.centerLeft,
              child:
              Text.rich(
                TextSpan(
                  text: 'User3: ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Perfect.',
                        style: TextStyle(
                        fontWeight: FontWeight.w400, 
                     ),
                     ),
                     ],
                 ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
              LikeButton(
                  mainAxisAlignment: MainAxisAlignment.start,
                  padding: EdgeInsets.only(top:20 ,left: 20),
                  size: 30,
                  circleColor: const CircleColor(
                      start: Colors.cyanAccent, end: Colors.cyan),
                  bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.cyanAccent,
                      dotSecondaryColor: Colors.tealAccent),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 30,
                    );
                  },
                  likeCount: 0,
                ),
              Lottie.asset('assets/animations/127305-like-a-boss-lolo.json'),
              Container(
              alignment: Alignment.centerLeft,
              child:
              Text.rich(
                TextSpan(
                  text: 'User4: ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700,
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Lol.',
                        style: TextStyle(
                        fontWeight: FontWeight.w400, 
                     ),
                     ),
                     ],
                 ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
              LikeButton(
                  mainAxisAlignment: MainAxisAlignment.start,
                  padding: EdgeInsets.only(top:20 ,left: 20),
                  size: 30,
                  circleColor: const CircleColor(
                      start: Colors.cyanAccent, end: Colors.cyan),
                  bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.cyanAccent,
                      dotSecondaryColor: Colors.tealAccent),
                  likeBuilder: (bool isLiked) {
                    return Icon(
                      Icons.favorite,
                      color: isLiked ? Colors.red : Colors.grey,
                      size: 30,
                    );
                  },
                  likeCount: 0,
                ),
                
            ],
            )
          ),
      );

}