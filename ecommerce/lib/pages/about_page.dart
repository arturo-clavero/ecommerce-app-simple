import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  const AboutPage({super.key});

  final Color backgroundColor = const Color.fromARGB(255, 242, 239, 239);


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        
        backgroundColor: backgroundColor,
        body: Center(child: Text("About ..."),)
      );

  }
}