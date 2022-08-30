import 'package:assignment2_food_delivery/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'buttonState.dart';
import 'package:provider/provider.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ButtonState(),
      child:  const MaterialApp(
          home: HomeScreen()),
    );
  }
}
