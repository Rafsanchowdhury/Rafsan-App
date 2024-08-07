import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "AppX",
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppX"),
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Rafsan Chowdhury"),
              accountEmail: Text("rafsanc90@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/2156153305/photo/beauty-portrait-of-a-young-asian-man-shot-against-a-white-background.jpg?s=2048x2048&w=is&k=20&c=fN5hrOXoRslnwWJvq3IEh8M1J3c26qsfV5QEl3J7e9Y="),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Email"),
              subtitle: Text("rafsanc90@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
