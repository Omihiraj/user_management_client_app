import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:user_management_client_app/home_page.dart';
import 'package:user_management_client_app/screens/main_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:user_management_client_app/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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


//       title: 'User Management Client App',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         useMaterial3: true,
//       ),
//       home: const HomePage(),
//     );
//   }
// }


