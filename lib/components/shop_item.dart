import 'package:flutter/material.dart';

import '../models/card.dart';

class ShopItem extends StatelessWidget {
  ShopCard card;
  ShopItem({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Image.asset(card.imagePath)
        ],
      ),

    );
  }
}
