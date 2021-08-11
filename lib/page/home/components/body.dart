import 'package:flutter/material.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/page/details/details_screen.dart';
import 'package:flutter_online_shop/page/home/components/categories.dart';
import 'package:flutter_online_shop/page/home/components/item_card.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: kDefaultPaddin, right: kDefaultPaddin, top: kDefaultPaddin),
          child: Center(
            child: Text(
              "Men",
              style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.orangeAccent),
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )),
          ),
        ),
        SizedBox(height: kDefaultPaddin),
      ],
    );
  }
}
