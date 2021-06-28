import 'package:flutter/material.dart';

import './categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Repas Délicieux',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategeoriesScreen(),
    );
  }
}
