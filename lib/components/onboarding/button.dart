import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class On_boarding_button extends StatelessWidget {
  final VoidCallback onPressed;
  final String button_text;

  On_boarding_button(this.button_text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Constants.primaryColor, minimumSize: Size.fromHeight(50)),
      onPressed: onPressed,
      child: Text(
        button_text,
        style: TextStyle(letterSpacing: 2.0),
      ),
    );
  }
}
