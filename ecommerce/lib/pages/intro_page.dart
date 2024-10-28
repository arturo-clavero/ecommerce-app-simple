import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});
  final Color background = const Color.fromARGB(255, 231, 231, 231);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: 
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'lib/images/logo1.jpg', 
                width: 200,
                color: background,
                colorBlendMode: BlendMode.modulate,
              ),
              const SizedBox(height:60),
              Text("Impossible is nothing", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height:15),
              Text("Brand new shoe collection", style: TextStyle(fontSize: 15, color: Colors.grey),),
              const SizedBox(height:60),
              GestureDetector(
                onTap:() {
                 Navigator.pushNamed(context, '/homePage');
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Center(
                      child: Text(
                        "Shop Now", 
                        style:TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                    ),
                    ),
                ),
              )
          ],
          ),
      ),
    );
  }

}