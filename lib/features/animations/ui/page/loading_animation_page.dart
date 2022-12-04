import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prog1/constant/app_colors.dart';
import 'package:prog1/features/animations/ui/page/animation_page.dart';
import 'package:prog1/navigation/bottom_nav.dart';
import 'package:page_transition/page_transition.dart';


// class MyloadAnimPage extends StatelessWidget {
//   const MyloadAnimPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   body:StreamBuilder<User?>(
//     //     stream: FirebaseAuth.instance.authStateChanges(),
//     //     builder: (context, snapshot){
//     //       if(snapshot.hasData){
//     //             return AnimatedSplashScreen(
//     //   splash: Lottie.asset('assets/animations/99274-loading.json'),
//     //   backgroundColor: Color.fromARGB(255, 255, 255, 255),
//     //  //nextScreen: MyAnimation(),
//     //   splashIconSize: 300,
//     //   duration: 2100,
//     //   splashTransition: SplashTransition.fadeTransition,
//     //   pageTransitionType: PageTransitionType.leftToRightWithFade,
//     //   animationDuration: const Duration(seconds: 1),
//    // );
//         //   }
//         //   else{
//         //     return MyLogin();
//         //   }
//         // }
//         // )
//     //);

//   }
// }