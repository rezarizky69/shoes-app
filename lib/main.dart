import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';
import 'package:flutter_online_shop/page/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        // textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        // primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), 
    );
  }
}

