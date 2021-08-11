import 'package:flutter/material.dart';
import 'package:flutter_online_shop/page/home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black12.withOpacity(0.10),
      elevation: 0,
      title: Text(
        "Eja Shop",
        style:
            TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            // By default our  icon color is white
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
