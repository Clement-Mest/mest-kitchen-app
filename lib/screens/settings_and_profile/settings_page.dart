import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/screens/settings_and_profile/widgets/profile_image_widget.dart';
import 'package:mest_kitchen_app/screens/settings_and_profile/widgets/profile_tab_content_widget.dart';
import 'package:mest_kitchen_app/screens/settings_and_profile/widgets/settings_tab_content_widget.dart';
import 'package:mest_kitchen_app/screens/settings_and_profile/widgets/user_code_widget.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  String currentTab = 'PROFILE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 16,
          color: Colors.black,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          //Top is where the
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                ProfileImageWidget(),
                SizedBox(
                  height: 16,
                ),
                UserCodeWidget(),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 'PROFILE';
                        });
                        print(currentTab);
                      },
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 18,
                          color: currentTab == 'PROFILE'
                              ? primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "|",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 28,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentTab = 'SETTINGS';
                        });
                        print(currentTab);
                      },
                      child: Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 18,
                          color: currentTab == 'SETTINGS'
                              ? primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Visibility(
                  visible: currentTab == 'PROFILE',
                  child: ProfileTabContentWidget(),
                ),
                Visibility(
                  visible: currentTab == 'SETTINGS',
                  child: SettingsTabContentWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
