import 'package:flutter/material.dart';

import '../components/shop_item.dart';
import '../models/card.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<ShopCard> cards = [
    ShopCard(
        name: 'Asics',
        price: '100',
        imagePath: 'lib/images/asics.png',
        description: 'cool asics'),
    ShopCard(
        name: 'Adidas',
        price: '120',
        imagePath: 'lib/images/adidas.png',
        description: 'cool adidas'),
    ShopCard(
        name: 'Lacoste',
        price: '200',
        imagePath: 'lib/images/lacoste.png',
        description: 'cool lacoste'),
    ShopCard(
        name: 'Yeezy',
        price: '250',
        imagePath: 'lib/images/yeezy.png',
        description: 'cool yeezy'),
    ShopCard(
        name: 'Nike',
        price: '300',
        imagePath: 'lib/images/nike.png',
        description: 'cool nike')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search'),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            )),

        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'Some items',
            style: TextStyle(color: Colors.grey.shade700),
          ),
        ),

        // recommended items
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Recommended 🔥',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all items',
                style: TextStyle(color: Colors.blue.shade300),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: cards.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ShopItem(card: cards[0]);
                }))
      ],

    );
  }
}
