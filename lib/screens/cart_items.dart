import 'package:flutter/material.dart';
import 'package:assignment2_food_delivery/buttonState.dart';
import 'package:provider/provider.dart';

class CartItems extends StatelessWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Cart',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
            color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,
            color: Colors.black,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Text(
            'Your cart has ${Provider.of<ButtonState>(context).itemSelected} items',
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
