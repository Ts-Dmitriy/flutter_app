import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              child:
              Image.asset('assets/images/1.jpg'),
              
            ),
                SizedBox(
                  height: 10,
                          ),
            Container(
              
              margin: EdgeInsets.only( right: 200),
              child:
              Text.rich(
                TextSpan(
                  text: 'friend220 ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'My new art!!',
                        style: TextStyle(
                        fontWeight: FontWeight.w400
                     ),
                     ),
                     ],
                 ),
              ),
              
            ),          
                LikeButton(
                  mainAxisAlignment: MainAxisAlignment.start,
                  padding: EdgeInsets.only(top:10 ,left: 20),
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
                 SizedBox(
                  height: 20,
                          ),
                Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              child:
              Image.asset('assets/images/2.jpg'),
              
            ),
                            SizedBox(
                  height: 10,
                          ),
            Container(
              
              margin: EdgeInsets.only( right: 200),
              child:
              Text.rich(
                TextSpan(
                  text: 'carlosFn ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Perfect.',
                        style: TextStyle(
                        fontWeight: FontWeight.w400
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
                SizedBox(
                  height: 20,
                          ),
                Container(
              margin: EdgeInsets.only(left: 35, right: 35),
              child:
              Image.asset('assets/images/3.jpg'),
              
            ),
              SizedBox(
                  height: 10,
                          ),
            Container(
              
              margin: EdgeInsets.only( right: 200),
              child:
              Text.rich(
                TextSpan(
                  text: 'user152654 ',
                        style: TextStyle(
                        fontWeight: FontWeight.w700
                     ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'My first work',
                        style: TextStyle(
                        fontWeight: FontWeight.w400
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
                SizedBox(
                  height: 20,
                          ),
          ],
          )
      )
        
      
    );
  }
}