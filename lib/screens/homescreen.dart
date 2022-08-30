import 'package:flutter/material.dart';
import 'package:assignment2_food_delivery/model/listview_builder.dart';
import 'cart_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const CartItems()));
                },
                icon: const Icon(Icons.shopping_cart_outlined,
                    color: Colors.black, size: 40),
              ),
              const SizedBox(width: 30),
            ],
            elevation: 0.0,
            toolbarHeight: 80,
            backgroundColor: Colors.white,
            centerTitle: false,
            shape: const Border(
              bottom: BorderSide(color: Colors.grey, width: 1),
            ),
            title: const Text(
              'Domino\'s Pizza',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          body: ListViewBuilder(),
        ),
      ),
    );
  }
}
