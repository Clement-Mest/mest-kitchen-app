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

  
  //To authorize notification clients for iOS
   authorizeAppNotification() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    print('User granted permission: ${settings.authorizationStatus}');
  }
}