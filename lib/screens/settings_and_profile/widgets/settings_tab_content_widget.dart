import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class SettingsTabContentWidget extends StatelessWidget {
  const SettingsTabContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 32),
        decoration: new BoxDecoration(
          color: Colors.grey[100],
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(30.0),
            topRight: const Radius.circular(30.0),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: primaryColor,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    "FAQs",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: errorColor,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 17,
                      color: errorColor,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: errorColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
