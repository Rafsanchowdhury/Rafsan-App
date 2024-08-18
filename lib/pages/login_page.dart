import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/Constants.dart';
import 'package:flutter_application_1/widgets/bg_image.dart';
import 'package:flutter_application_1/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static String routeName = '/login'; // Initialized routeName

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Form(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller:
                                    userNameController, // Added controller
                                decoration: InputDecoration(
                                  hintText: "Enter username",
                                  labelText: "Username",
                                ),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                controller:
                                    passwordController, // Added controller
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter password",
                                  labelText: "Password",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Constants.prefs.setBool("LoggedIn", true);
                            Navigator.pushReplacementNamed(
                                context, HomePage.routeName);
                          },
                          child: Text("Sign In"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
