import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class TabNavigationWidget extends StatefulWidget {
  const TabNavigationWidget({Key? key}) : super(key: key);

  @override
  State<TabNavigationWidget> createState() => _TabNavigationWidgetState();
}

class _TabNavigationWidgetState extends State<TabNavigationWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Center(
              child: Text(
                'Meal Screen',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Text(
                'Allergies Screen',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Text(
                'Complaints Screen',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: primaryColor,
        currentIndex: currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'MEALS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.takeout_dining),
            label: 'ALLERGIES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.textsms),
            label: 'COMPLAINTS',
          ),
        ],
      ),
    );
  }
}
