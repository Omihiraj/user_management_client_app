import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:user_management_client_app/screens/main_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 4000,
        splash: Image.asset('assets/splashIcon.gif'),
        nextScreen: const MainScreen(),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: const Color.fromRGBO(24, 28, 20, 1),
      ),
    );
  }
}

