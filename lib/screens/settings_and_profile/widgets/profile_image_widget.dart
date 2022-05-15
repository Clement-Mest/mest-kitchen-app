import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF24BABA),
          width: 5,
        ),
        borderRadius: BorderRadius.circular(300),
      ),
      child: CircleAvatar(
        radius: 70,
        backgroundImage: NetworkImage(
          "https://uploads-ssl.webflow.com/618cbaa0a430c947baf5c6db/61b368c817219a57eebaf1f3_Frame%2010%20(8).jpg",
        ),
      ),
    );
  }
}
