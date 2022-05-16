import 'package:flutter/material.dart';

class UserCodeWidget extends StatelessWidget {
  const UserCodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF675AFF).withOpacity(0.08),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      padding: EdgeInsets.all(8),
      child: Text("EOO1"),
    );
  }
}
