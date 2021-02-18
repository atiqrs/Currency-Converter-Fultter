import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ConvertCurrency.dart';

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

  List<String> currency = <String>[
    'Us Doller',
    'Canadian Doller',
    'Taka',
    'Euro',
    'Starling Pound',
    'Ksa Real'
  ];

  double inputValue;
  String fromCurrency = "Us Doller";
  String toCurrency = "Taka";
  String outputValue = "";

  ConvertCurrency convertCurrency= new ConvertCurrency();

    @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Container(
              height: 150,
              width: 600,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                  child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: DropdownButton<String>(
                    value: fromCurrency,
                    onChanged: (String string) =>
                        setState(() => fromCurrency = string),
                    items: currency.map((String item) {
                      return DropdownMenuItem<String>(
                        child: Text('$item'),
                        value: item,
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                                  
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Input your amount in $fromCurrency"),
                      onChanged: (inputValue) {
                        setState(() {
                          inputValue = inputValue;
                          print(inputValue);
                        });
                      },
                    )
                    )
              ])),
            ),

            Container(
              height: 150,
              width: 600,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                  child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  child: DropdownButton<String>(
                    value: toCurrency,
                    onChanged: (String string) =>
                        setState(() => toCurrency = string),
                    items: currency.map((String item) {
                      return DropdownMenuItem<String>(
                        child: Text('$item'),
                        value: item,
                      );
                    }).toList(),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Text('Your $toCurrency is: $outputValue')
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //       labelText: "Input your amount in $toCurrency"),
                    //   onChanged: (inputValue) {
                    //     setState(() {
                    //       inputValue = inputValue;
                    //       print(inputValue);
                    //     });
                    //   },
                    // )
                    )
              ])),
            ),

            // Column(children: [
            //   TextField(
            //     decoration:
            //         InputDecoration(labelText: "Input Your Taka Amount"),
            //     onChanged: (inputValue) {
            //       setState(() {
            //         print(inputValue);
            //       });
            //     },
            //   ),
            //   // DropdownButton(
            //   //     value: toCurrency,
            //   //     onChanged: (var newValue) {
            //   //       setState(() {
            //   //         fromCurrency = newValue;
            //   //       });
            //   //     },
            //   //     items: currency.map((_toCurrency) {
            //   //       return DropdownMenuItem(
            //   //           value: _toCurrency, child: Text(_toCurrency));
            //   //     }).toList())
            // ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton(
                  child: Text("Button"),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text('Tap'),
                    ));
                    
                    outputValue = convertCurrency.Convert(fromCurrency,toCurrency,inputValue);
                  }),

            )
          ])),
    );
  }

  void snak() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('Tap: '+outputValue),
    ));
  }
}
