import 'package:flutter/material.dart';
import 'package:mest_kitchen_app/components/onboarding/Input_field.dart';
import 'package:mest_kitchen_app/components/onboarding/button.dart';
import 'package:mest_kitchen_app/static/colors.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? selectedValue;
  String? dropdownValue;

  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  @override
  Widget build(BuildContext context) {
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
                Input_field(
                  hintText: "Email",
                ),
                SizedBox(height: 10),
                Input_field(
                  hintText: "Name",
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Constants.primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue,

                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Select User Type',
                            style: TextStyle(color: Colors.white)),
                      ),
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 20,
                      style: const TextStyle(color: Colors.deepPurple),
                     
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['EIT', 'Fellow', 'Staff', 'Incubator']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),

                // DropdownButton(
                //     items: selectOption, onChanged: (String? newValue) {}),
                SizedBox(height: 30),
                On_boarding_button("Proceed to Home", (() => {}))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
