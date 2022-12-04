import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prog1/constant/app_colors.dart';
import 'package:prog1/navigation/bottom_nav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:prog1/features/app/ui/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:page_transition/page_transition.dart';


class MyWelcomePage extends StatelessWidget {
  const MyWelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body:StreamBuilder<User?>(
    //     stream: FirebaseAuth.instance.authStateChanges(),
    //     builder: (context, snapshot){
    //       if(snapshot.hasData){
                return AnimatedSplashScreen(
      splash: Lottie.asset('assets/128706-3-seconds-loader-beeboard.json'),
      backgroundColor: AppColors.HomeColor,
      nextScreen: BottomPage(),
      splashIconSize: 300,
      duration: 2100,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
        //   }
        //   else{
        //     return MyLogin();
        //   }
        // }
        // )
    //);

  }
}