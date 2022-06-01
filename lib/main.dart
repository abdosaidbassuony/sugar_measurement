import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';
import 'package:sugar_measurement/bloc/register_bloc.dart';
import 'package:sugar_measurement/ui/login_screen/screen/login_screen.dart';
import 'package:sugar_measurement/utils/theme/app_theme.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

import 'notification_service.dart';

void printHello() {
  final DateTime now = DateTime.now();
  final int isolateId = Isolate.current.hashCode;
  print("[$now] Hello, world! isolate=${isolateId} function='$printHello'");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AndroidAlarmManager.initialize();
  await NotificationService().initNotification();

  runApp(const MyApp());
  const int helloAlarmID = 0;

  await AndroidAlarmManager.periodic(
      const Duration(minutes: 1), helloAlarmID, printHello);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (BuildContext context) => AuthBloc(dynamic)),
        BlocProvider<HomeBloc>(
            create: (BuildContext context) => HomeBloc(dynamic)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sugar Measurement',
        theme: AppTheme().themeDataLight,
        home: const LoginScreen(),
      ),
    );
  }
}
