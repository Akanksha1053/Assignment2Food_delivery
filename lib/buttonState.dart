import 'package:flutter/material.dart';
import 'model/listi_tems.dart';

class ButtonState extends ChangeNotifier{

 int itemSelected = 0;
 List<Items> listitems = [
   Items('Item1','Tomato Sauce',false),
   Items('Item2','Tomato Sauce',false),
   Items('Item3','Tomato Sauce',false),
   Items('Item4','Tomato Sauce',false),
   Items('Item5','Tomato Sauce',false),
   Items('Item6','Tomato Sauce',false),
   Items('Item7','Tomato Sauce',false),
   Items('Item8','Tomato Sauce',false),
   Items('Item9','Tomato Sauce',false),
   Items('Item10','Tomato Sauce',false),
 ];

 void toggleFunction(int index)
 {
   listitems[index].isAdded = !listitems[index].isAdded;
   if(listitems[index].isAdded == true){
     itemSelected++;
     print(index);
     notifyListeners();
   }
   else
     {
       itemSelected--;
       notifyListeners();
     }
 }

 // bool isAdded(int index){
 //   if(listitems[index].isAdded){
 //     return true;
 //   }
 //   else{
 //     return false;
 //
 //   }

 // }
}