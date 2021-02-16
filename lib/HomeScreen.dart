//press sst and select statefull / stateless widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextStyle lebelStyle = TextStyle(
    fontSize: 15.0,
    color: Colors.lime,
  );

  final TextStyle outputStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.redAccent,
  );

  final List<String> currency = [
    "UsDoller",
    "CanadianDoller",
    "Taka",
    "Euro",
    "StarlingPound",
    "KsaReal",
  ];

  double inputValue;
  String fromCurrency = "UsDoller";
  String toCurrency = "Taka";
  String outputValue = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Input Your Doller Amount"
                ),
                onChanged: (inputValue){
                  setState(() {
                    inputValue = inputValue;
                  });
                },
              ),
          ],
        )
        ),
    );
  }
}