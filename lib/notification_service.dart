import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:rxdart/rxdart.dart';

class NotificationService {
  static final onNotificationClick = BehaviorSubject<String?>();

  static final NotificationService _notificationService =
      NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  NotificationService._internal();

  Future<void> initNotification() async {
    // Android initialization
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    // ios initialization
    const IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS);
    // the initialization settings are initialized after they are setted
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (payload) =>
            onNotificationClick.sink.add(payload));
  }

  Future<void> showNotification(
      int id, String title, String body, TimeOfDay timeOfDay) async {
    tz.initializeTimeZones();
    final now = DateTime.now();
    print(DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute));
    print(now);
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      DateTime(now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute)
          .toString(),
      tz.TZDateTime.from(
          DateTime(
            now.year,
            now.month,
            now.day,
            timeOfDay.hour,
            timeOfDay.minute + 1,
          ),
          tz.local),
      const NotificationDetails(
        // Android details
        android: AndroidNotificationDetails('main_channel', 'Main Channel',
            channelDescription: "ashwin",
            importance: Importance.max,
            priority: Priority.max),
        // iOS details
        iOS: IOSNotificationDetails(
          sound: 'default.wav',
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      // Type of time interpretation
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.wallClockTime,
      androidAllowWhileIdle:
          true, //To show notification even when the app is closed
    );
    print(DateTime(
        now.year, now.month, now.day, timeOfDay.hour, timeOfDay.minute));
    // await flutterLocalNotificationsPlugin.zonedSchedule(
    //   id,
    //   title,
    //   body,
    //   tz.TZDateTime.now(tz.UTC).add(const Duration(
    //       seconds: 1)), //schedule the notification to show after 2 seconds.
    //   const NotificationDetails(
    //     // Android details
    //     android: AndroidNotificationDetails('main_channel', 'Main Channel',
    //         channelDescription: "ashwin",
    //         importance: Importance.max,
    //         priority: Priority.max),
    //     // iOS details
    //     iOS: IOSNotificationDetails(
    //       sound: 'default.wav',
    //       presentAlert: true,
    //       presentBadge: true,
    //       presentSound: true,
    //     ),
    //   ),

    // Type of time interpretation
    // uiLocalNotificationDateInterpretation:
    // UILocalNotificationDateInterpretation.absoluteTime,
    // androidAllowWhileIdle:
    // true, // To show notification even when the app is closed
    // );
  }
}
