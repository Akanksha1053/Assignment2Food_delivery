import 'package:assignment2_food_delivery/model/item_description.dart';
import 'package:flutter/material.dart';
import 'package:assignment2_food_delivery/buttonState.dart';
import 'package:provider/provider.dart';

class ListTileView extends StatelessWidget {
  int index;
  ListTileView(this.index);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            ItemDescription(index),
          ],
        ),
        const SizedBox(
          width: 90,
        ),
        Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lightBlueAccent),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('images/Pizza.jpeg',
                          height: 200, width: 100, fit: BoxFit.cover),
                    ))),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: GestureDetector(
                child: Center(
                  child: Container(
                    height: 20,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Provider.of<ButtonState>(context)
                                .listitems[index]
                                .isAdded
                            ? Border.all(color: Colors.green)
                            : Border.all(color: Colors.red)),
                    child: Provider.of<ButtonState>(context)
                            .listitems[index]
                            .isAdded
                        ? const Text(
                            'ADDED',
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          )
                        : const Text(
                            'ADD',
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                  ),
                ),
                onTap: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .toggleFunction(index);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
