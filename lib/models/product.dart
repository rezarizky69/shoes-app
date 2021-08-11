import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });  
}

List<Product> products = [
  Product(
      id: 1,
      title: "Ice Cold",
      price: 696,
      size: 40,
      description: dummyText,
      image: "assets/images/jordan_ice.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "White Fire",
      price: 696,
      size: 41,
      description: dummyText,
      image: "assets/images/jordan_red.png",
      color: Colors.redAccent),
  Product(
      id: 3,
      title: "Magic Orange",
      price: 696,
      size: 40,
      description: dummyText,
      image: "assets/images/jordan_orange.png",
      color: Colors.orangeAccent),
  Product(
      id: 4,
      title: "Garden Blue",
      price: 696,
      size: 41,
      description: dummyText,
      image: "assets/images/jordan_blue.png",
      color: Colors.blueAccent),
  Product(
      id: 5,
      title: "Georgeus Pink",
      price: 696,
      size: 42,
      description: dummyText,
      image: "assets/images/jordan_pink.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Rising Black",
    price: 696,
    size: 40,
    description: dummyText,
    image: "assets/images/jordan_black.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
