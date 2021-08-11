import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4, horizontal: 40.0),
            child: Center(
              child: Text(
                product.title,
                style: TextStyle(color: Colors.white54, fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Text(
              "\$${product.price}",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
