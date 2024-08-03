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
      body: Container(
        child: Center(child: Text("Hi")),
      ),
    );
  }
}
