import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "text widget example",
    home: Scaffold(
      appBar: AppBar(
        title: Text("text example"),
      ),
      body: myapp(),
    ),
  ));
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  double _svalue = 50;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Slider(
              value: _svalue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(
                  () {
                    _svalue = value;
                  },
                );
                print(value);
              },
              activeColor: Colors.amber,
              inactiveColor: Colors.cyan,
              divisions: 100,
              label: "range $_svalue",
            ),
            Text("slider value =$_svalue")
          ],
        ),
      ),
    );
  }
}
