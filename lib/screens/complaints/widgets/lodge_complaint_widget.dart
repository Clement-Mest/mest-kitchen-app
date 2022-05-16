import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/screens/complaints/widgets/pill_widget.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class LodgeComplaintWidget extends StatelessWidget {
  const LodgeComplaintWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Complaints',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          Text("Select the appropriate tags for your complaint."),
          SizedBox(height: 20),
          Flexible(
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.grey[100],
                  ),
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.center,
                  child: Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      PillWidget(
                        label: 'Breakfast',
                        color: breakfastColor.withOpacity(0.1),
                      ),
                      PillWidget(
                        label: 'Lunch',
                        color: lunchColor.withOpacity(0.1),
                      ),
                      PillWidget(
                        label: 'Dinner',
                        color: dinnerColor.withOpacity(0.1),
                      ),
                      PillWidget(
                        label: 'Poor serving',
                        color: dinnerColor.withOpacity(0.1),
                      ),
                      PillWidget(
                        label: 'Allergy reaction',
                        color: lunchColor.withOpacity(0.1),
                      ),
                      PillWidget(
                        label: 'Portion control',
                        color: breakfastColor.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Type your complaint.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  minLines: 6,
                  maxLines: 6,
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    hintText: 'Type your complaint here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('SEND COMPLAINT'),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: Size(195, 50),
                    primary: primaryColor,
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
