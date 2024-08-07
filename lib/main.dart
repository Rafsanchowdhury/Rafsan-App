import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "AppX",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AppX"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.blueAccent,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ],
        ));
  }
}
