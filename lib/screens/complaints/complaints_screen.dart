import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/screens/complaints/widgets/complaint_item_widget.dart';
import 'package:mest_kitchen_app/screens/complaints/widgets/lodge_complaint_widget.dart';
import 'package:mest_kitchen_app/screens/complaints/widgets/pill_widget.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class ComplaintsScreen extends StatelessWidget {
  const ComplaintsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 40,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: TextButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              context: context,
              builder: (context) {
                return LodgeComplaintWidget();
              },
            );
          },
          child: Text(
            "Lodge complaint",
            style: TextStyle(
              color: mainTextColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    child: Text(
                      "Complaints",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: ListView(
                  children: [
                    ComplaintItemWidget(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus velit a faucibus est duis. Ultrices venenatis, duis fusce at nunc venenatis. Magna maecenas neque eu odio mi, semper sagittis, purus. Semper vulputate at rhoncus in tincidunt arcu.",
                      date: "22 April, 2022 at 06:00pm",
                      tags: [
                        PillWidget(
                          color: dinnerColor.withOpacity(0.1),
                          label: 'Poor serving',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: lunchColor.withOpacity(0.1),
                          label: 'Allergy reaction',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: lunchColor.withOpacity(0.1),
                          label: 'Lunch',
                        ),
                      ],
                    ),
                    ComplaintItemWidget(
                      isResolved: true,
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus velit a faucibus est duis. Ultrices venenatis, duis fusce at nunc venenatis. Magna maecenas neque eu odio mi, semper sagittis, purus. Semper vulputate at rhoncus in tincidunt arcu.",
                      date: "22 April, 2022 at 06:00pm",
                      tags: [
                        PillWidget(
                          color: dinnerColor.withOpacity(0.1),
                          label: 'Poor serving',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: lunchColor.withOpacity(0.1),
                          label: 'Allergy reaction',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: breakfastColor.withOpacity(0.1),
                          label: 'Breakfast',
                        ),
                      ],
                    ),
                    ComplaintItemWidget(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus velit a faucibus est duis. Ultrices venenatis, duis fusce at nunc venenatis. Magna maecenas neque eu odio mi, semper sagittis, purus. Semper vulputate at rhoncus in tincidunt arcu.",
                      date: "22 April, 2022 at 06:00pm",
                      tags: [
                        PillWidget(
                          color: dinnerColor.withOpacity(0.1),
                          label: 'Poor serving',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: lunchColor.withOpacity(0.1),
                          label: 'Allergy reaction',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: lunchColor.withOpacity(0.1),
                          label: 'Lunch',
                        ),
                      ],
                    ),
                    ComplaintItemWidget(
                      isResolved: true,
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tempus velit a faucibus est duis. Ultrices venenatis, duis fusce at nunc venenatis. Magna maecenas neque eu odio mi, semper sagittis, purus. Semper vulputate at rhoncus in tincidunt arcu.",
                      date: "22 April, 2022 at 06:00pm",
                      tags: [
                        PillWidget(
                          color: dinnerColor.withOpacity(0.1),
                          label: 'Poor serving',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: lunchColor.withOpacity(0.1),
                          label: 'Allergy reaction',
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        PillWidget(
                          color: breakfastColor.withOpacity(0.1),
                          label: 'Breakfast',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
