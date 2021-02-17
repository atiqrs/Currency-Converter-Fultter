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

  List currency = [
    "Us Doller",
    "Canadian Doller",
    "Taka",
    "Euro",
    "Starling Pound",
    "Ksa Real",
  ];

  var Apps = ["Apple", "Rahman"];
  String AppsName = "";

  double inputValue;
  String fromCurrency = "UsDoller";
  String toCurrency = "Taka";
  String outputValue = "";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Column(children: [
              TextField(
                decoration: InputDecoration(labelText: "Input Your Amount"),
                onChanged: (inputValue) {
                  setState(() {
                    inputValue = inputValue;
                    print(inputValue);
                  });
                },
              ),

              // DropdownButton(
              //   value: AppsName,
              //   onChanged: (String newValue) {
              //     setState(() {
              //       AppsName = newValue;
              //     });
              //   },
              //   items: Apps.map((var e){
              //     return DropdownMenuItem(value: e, child: Text(e));
              //   }).toList(),
              //   ),

              // DropdownButton(
              //   value: fromCurrency,
              //   onChanged: (var newValue) {
              //     setState(() {
              //       fromCurrency = newValue;
              //     });
              //   },
              //   items: currency.map((formCurrency) {
              //     return DropdownMenuItem(
              //         value: formCurrency, 
              //         child: Text(formCurrency),
              //         );
              //   }).toList(),
              // )
            ]),
            Column(children: [
              TextField(
                decoration:
                    InputDecoration(labelText: "Input Your Taka Amount"),
                onChanged: (inputValue) {
                  setState(() {
                    print(inputValue);
                  });
                },
              ),
              // DropdownButton(
              //     value: toCurrency,
              //     onChanged: (var newValue) {
              //       setState(() {
              //         fromCurrency = newValue;
              //       });
              //     },
              //     items: currency.map((_toCurrency) {
              //       return DropdownMenuItem(
              //           value: _toCurrency, child: Text(_toCurrency));
              //     }).toList())
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: RaisedButton(
                child: Text("Button 1"),
                onPressed: null),
              )
          ])),
    );
  }
}
