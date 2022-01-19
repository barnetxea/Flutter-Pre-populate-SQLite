import 'package:flutter/material.dart';
import 'package:prays/src/menu_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MenuMain(),
    );
  }
}
