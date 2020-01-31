import 'package:flutter/material.dart';
import 'package:flutter_fridays/home.dart';

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee App',
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
            color: Color.fromRGBO(240, 227, 195, 1.0), elevation: 2.0),
      ),
      home: HomeScreen(),
    );
  }
}
