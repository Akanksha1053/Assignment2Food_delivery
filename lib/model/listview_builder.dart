import 'package:assignment2_food_delivery/model/item_data.dart';
import 'package:assignment2_food_delivery/model/list_tile.dart';
import 'package:flutter/material.dart';


class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listitems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10,bottom: 10),
                  height: 150,
                child: ListTileView(index)
              ),
              const Divider(
                height: 5,
                thickness: 1,
              ),
              const SizedBox(
                height: 15,
              )
            ],
          );
        });
  }
}
