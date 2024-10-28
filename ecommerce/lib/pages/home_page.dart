import 'package:flutter/material.dart';
import '../components/bottom_nav.dart';
import 'cart_page.dart';
import 'shop_page.dart';
import 'about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool  isMenu = false;
  bool  find = false;
  TextEditingController searchContoller = TextEditingController();
  List shoeList = [
    ['/lib/images/shoes1.png', "200\$", "Title ", "Desciption"],
    ['/lib/images/shoes2.png', "210\$","Title ", "Desciption"],
    ['/lib/images/shoes3.png', "220\$","Title ", "Desciption"],
    ['/lib/images/shoes4.webp',"230\$", "Title ", "Desciption"],
    ['/lib/images/shoes5.png', "240\$","Title ", "Desciption"],
    ['/lib/images/shoes6.webp',"250\$", "Title ", "Desciption"],
    ['/lib/images/shoes7.png', "260\$","Title ", "Desciption"],
  ];
  List pageList = [ ShopPage(), const CartPage(), const AboutPage()];
  Color backgroundColor = const Color.fromARGB(255, 242, 239, 239);
  Color drawerColor =  Color.fromARGB(255, 30, 30, 30);
  int currentPage = 0;
  void onTabChange(int index)
  {
    setState(() {
      currentPage = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
           return IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
           );
         }
        ),
        backgroundColor: backgroundColor,
      ),
      drawer: Drawer(
        //backgroundColor: const Color.fromARGB(255, 148, 146, 146),
        backgroundColor: drawerColor,
        child: Padding(
		  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
		  child: Column(
			mainAxisAlignment: MainAxisAlignment.spaceBetween,
		    children: [
		      Column(
		      			children: [
		      			  Container(
		      				child: Image.asset(
		      				  'lib/images/logo1_inv.jpg', 
		      				  color: drawerColor,
		      				  colorBlendMode: BlendMode.screen,
		      				),
		      				),
		      			   Padding(
		      				 padding: const EdgeInsets.all(20),
		      
		      				 child: Column(
		      				   children: [
		      				     ListTile(
									horizontalTitleGap: 35,
		      				      iconColor: Colors.white,
		      				      textColor: Colors.white,
		      				      leading: Icon(Icons.home),
		      				      title: Text("Home"),
								  onTap: () {Navigator.pushNamed(context, '/homePage');},
		      				     ),
		      					 ListTile(
									horizontalTitleGap: 35,
									iconColor: Colors.white,
									textColor: Colors.white,
									leading: Icon(Icons.info),
									title: Text("About"),
									onTap: () {onTabChange(2); Navigator.pop(context);},

								),
		      				   ],
		      				 ),
		      			   ),
		      			],
		     		 ),
			  		 Padding(
						padding: const EdgeInsets.all(20),
						child: ListTile(
							horizontalTitleGap: 35,
							iconColor: Colors.white,
							textColor: Colors.white,
							leading: Icon(Icons.logout),
							title: Text("Log out"),
						),
					),
		    ],
			
		  ),
		),
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: currentPage < 2 ? myBottomNav(onTabChange: onTabChange,) : null,
      body: pageList[currentPage],
	
    );
  }
}