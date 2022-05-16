import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/screens/complaints/widgets/pill_widget.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class ComplaintItemWidget extends StatelessWidget {
  const ComplaintItemWidget({
    Key? key,
    required this.text,
    required this.date,
    this.isResolved = false,
    required this.tags,
  }) : super(key: key);

  final String text;
  final String date;
  final bool isResolved;
  final List<Widget> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: !isResolved,
            child: PillWidget(
              color: Colors.grey[50],
              label: 'NOT RESOLVED',
              textColor: lowRating,
            ),
          ),
          Visibility(
            visible: isResolved,
            child: PillWidget(
              color: Colors.grey[50],
              label: 'RESOLVED',
              textColor: successColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              text,
            ),
          ),
          Row(
            children: tags,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                date,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
