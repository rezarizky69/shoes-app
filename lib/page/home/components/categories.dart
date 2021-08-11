import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Shoe", "Shirt", "Backpack", "Hat", "Jeans", "Polo", "Short"];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: selectedIndex == index ? 14 : 10,
                color: selectedIndex == index ? Colors.orange : Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), 
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.orange : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
