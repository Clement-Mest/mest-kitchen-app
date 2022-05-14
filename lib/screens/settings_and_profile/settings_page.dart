import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Creatig the appbar and back button
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 10,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_left,
          color: Colors.black,
        ),
        title: Transform(
          // Enforcing Profile to start forcefully from left side using Transform
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            "Profile",
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
        ),
      ),

      body: Column(
        children: <Widget>[
          //Top is where the
          Expanded(
              child: Column(

                  //image and button under goes here
                  )),
          Container(
            decoration: new BoxDecoration(color: Colors.grey),
            child: new TabBar(
              controller: _controller,
              tabs: [
                new Tab(
                  text: "Profile",
                ),
                new Tab(
                  text: 'Settings',
                ),
              ],
            ),
          ),
          new Expanded(
            child: new TabBarView(
              controller: _controller,
              children: <Widget>[
                //input all text that goes into settings
                Container(
                    decoration: new BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //The containers for profile go in here
                        Text("This is a Profile View")
                      ],
                    )),
                Container(
                    decoration: new BoxDecoration(color: Colors.grey),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //The containers for profile go in here
                        Text("This is a Settings View")
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
