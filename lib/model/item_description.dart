import 'package:assignment2_food_delivery/model/item_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemDescription extends StatelessWidget {
  final int index;
  ItemDescription(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          listitems[index].itemName,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
        // subtitle:
        const SizedBox(
          height: 10,
        ),
        Text(
          listitems[index].description,
          style: const TextStyle(fontSize: 15, color: Colors.grey),
        ),
        const SizedBox(
          height: 5,
        ),
        RatingBar.builder(
          wrapAlignment: WrapAlignment.start,
          initialRating: 4,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
      ],
    );
  }
}
