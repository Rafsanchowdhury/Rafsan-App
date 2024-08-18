import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.png",
      fit: BoxFit.cover,
      height: 400,
      width: 500,
      color: Colors.black.withOpacity(0.6),
      colorBlendMode: BlendMode.darken,
    );
  }
}
