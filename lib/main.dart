import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';
import 'package:sugar_measurement/bloc/register_bloc.dart';
import 'package:sugar_measurement/ui/home_screen/widget/add_new_alarm_widget.dart';
import 'package:sugar_measurement/ui/login_screen/screen/login_screen.dart';
import 'package:sugar_measurement/utils/base_widget/yes_no_dialog_widget.dart';
import 'package:sugar_measurement/utils/theme/app_theme.dart';
import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';

import 'notification_service.dart';

void printHello() {
  final DateTime now = DateTime.now();
  final int isolateId = Isolate.current.hashCode;
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

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        color: Colors.grey,
        debugShowCheckedModeBanner: false,
        title: 'Sucrose',
        theme: AppTheme().themeDataLight,
        home: const LoginScreen(),
      ),
    );
  }
}

mainTest() {}
