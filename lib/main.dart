import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Homepage(), theme: ThemeData(primaryColor: Colors.purple)));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Container(
          height: 100,
          color: Colors.yellow,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(9),
                width: 100,
                height: 100,
                color: Colors.red,
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(9),
                width: 100,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
              ),
              Container(
                padding: EdgeInsets.all(9),
                width: 100,
                height: 100,
                color: Colors.red,
                alignment: Alignment.center,
              )
            ],
          ),
        ));
  }
}
