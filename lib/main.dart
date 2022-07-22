import 'package:flutter/material.dart';
import 'package:bitcoin_ticker/price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return MaterialApp(
      theme:   appMode.copyWith(primaryColor: Colors.lightBlue, scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );

  }

}

