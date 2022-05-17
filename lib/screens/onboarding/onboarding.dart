import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/components/onboarding/button.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bottom;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1588123190131-1c3fac394f4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 8, 8, 8),
          ],
        )),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage("logo.png"),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "MEST Kitchen",
                  style: TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome to Mest Kitchen",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                On_boarding_button("sign in with google", (() => {}))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
