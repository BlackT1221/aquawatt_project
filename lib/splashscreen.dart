import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'homescreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('img/Lottie (2).json'),
      nextScreen: HomeScreen(),
      duration: 8000,
      splashIconSize: 800,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 4),
    );
  }
}
