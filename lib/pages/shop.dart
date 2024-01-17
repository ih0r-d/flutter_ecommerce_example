import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
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
        // Expanded(
        //     child: ListView.builder(itemBuilder: (context, index) {
        //       ShopCard card = ShopCard(name: 'Asics',
        //           price: '1000',
        //           imagePath: 'lib/images/asics.png',
        //           description: 'cool shoe');
        //       return ShopItem(card: card);
        //     })
        // )
      ],
    );
  }
}
