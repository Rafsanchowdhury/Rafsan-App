import 'package:flutter/material.dart';
import 'bg_image.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key? key, // Make the key nullable with Key?
    required this.myText, // Mark myText as required
    required this.nameController, // Mark nameController as required
  }) : super(key: key);

  final String myText;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Change <widget> to <Widget>
        BgImage(),
        SizedBox(
          height: 20,
        ),
        Text(
          myText,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold), // Correct fontWight to fontWeight
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: nameController,
            keyboardType:
                TextInputType.text, // Correct KeyboardType to keyboardType
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Something here",
              labelText: "Name",
            ),
          ),
        )
      ],
    );
  }
}
