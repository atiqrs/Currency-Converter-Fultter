import 'package:flutter/material.dart';
import 'HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Currency Converter",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Convert Your Currency"),
        ),
        body: HomeScreen(),
      ),
    );
  }
}


