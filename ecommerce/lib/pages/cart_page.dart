import 'package:flutter/material.dart';

class CartPage extends StatelessWidget
{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 239, 239),
      body: Center(child: Text("Cart"),)
    );
  }
}