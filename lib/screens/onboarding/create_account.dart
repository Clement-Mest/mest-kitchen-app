import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: lightBackground,
          child: const Text(
            "Onboarding Screen Starts Here",
          ),
        ),
      ),
    );
  }
}
