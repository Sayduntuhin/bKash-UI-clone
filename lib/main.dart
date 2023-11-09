import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


import 'Pages/Navigation_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleSmall: TextStyle(fontSize: 11,color: Colors.white,fontFamily: 'fonts1')
        ),
        primaryColor: Colors.pink,
        primarySwatch: Colors.pink,

      ),
      home: AnimatedSplashScreen(
        splash: const Image(image: AssetImage('assets/images/bkashlogogif.gif')),
         splashIconSize: 250,
          duration: 2000,
          backgroundColor: const Color(0xFFe3146c),
          nextScreen: const NavigationPage(),
      )
    );
  }
}

