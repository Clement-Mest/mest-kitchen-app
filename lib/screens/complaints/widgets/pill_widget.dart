import 'package:flutter/material.dart';

class PillWidget extends StatelessWidget {
  const PillWidget({
    Key? key,
    required this.label,
    required this.color,
    this.textColor = Colors.black,
  }) : super(key: key);

  final String label;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
        ),
      ),
    );
  }
}
