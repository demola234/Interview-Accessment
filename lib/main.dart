import 'package:flutter/material.dart';
import 'package:lekkiprop/views/homeview/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lekki Properties',
      home: Scaffold(body: Home()),
    );
  }
}
