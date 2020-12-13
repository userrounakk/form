import 'package:flutter/material.dart';
import 'package:registrtion/Pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registrtation',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
