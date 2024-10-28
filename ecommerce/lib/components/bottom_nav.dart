import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class myBottomNav extends StatelessWidget
{
  final void Function(int)? onTabChange;
  const myBottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: GNav(
          color: const Color.fromARGB(210, 194, 194, 194),
          activeColor: const Color.fromARGB(133, 0, 0, 0),
          tabBackgroundColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBorderRadius: 30,
          mainAxisAlignment: MainAxisAlignment.center,
		  onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(icon: Icons.shop, text: 'Shop', gap:20),
            GButton(icon: Icons.shopping_bag_rounded, text: "Cart", gap:20),
          ],
        ),
      )
    );
  }
}