import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';
import 'package:flutter_online_shop/models/product.dart';
import 'package:flutter_online_shop/page/details/components/cart_counter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: product.color,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            "assets/icons/heart.svg",
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: kDefaultPaddin),
          child: CartCounter(),
        ),
      ],
    );
  }
}
