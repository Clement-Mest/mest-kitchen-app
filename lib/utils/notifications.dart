import 'package:firebase_messaging/firebase_messaging.dart';

class Notifications {
  String? fcmToken;
  
  // To generate fcmToken for a particular user
  getMessagingToken() async {
    try {
      final fcmToken = await FirebaseMessaging.instance.getToken();
      return fcmToken;
    } catch (e) {
      print(e);
    }
  }
  authorizeAppNotification() async {
    // do something
  }
}