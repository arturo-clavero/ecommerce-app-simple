
import 'package:flutter/material.dart';
import '../components/shoe_tile.dart';

class ShopPage extends StatelessWidget
{
  ShopPage({super.key});
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 239, 239),
      body: 
     // Center(child: 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            //SEARCH BAR
            Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  SizedBox(width: 20,),
                  Expanded(child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyle( color: Colors.grey,)
                    ),
                    controller: myController,
                  ),
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.search, color:Colors.grey),
                  )
                ],)
              ),
            //MESSAGE
            Container(
              padding: EdgeInsets.all(30),
              height: 100,
              child: Text("Trending", textAlign: TextAlign.start, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ),
            //HOT PICKS
            Expanded(
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ShoeTile(),
              ),
            )
          ],),
        ),
    );
  }
}

