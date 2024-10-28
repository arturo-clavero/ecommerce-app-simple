import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'pages/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: IntroPage(),
     routes: {
      '/homePage':(context)=> HomePage(),
      '/aboutPage':(context)=> AboutPage(),
     },
    );
  }
}
