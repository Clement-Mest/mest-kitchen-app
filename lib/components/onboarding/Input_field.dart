import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class Input_field extends StatelessWidget {
  final hintText = '';
  const Input_field({Key? key, hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Constants.primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Constants.primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
