import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/screens/onboarding/create_account.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CreateAccount(),
    );
  }
}
