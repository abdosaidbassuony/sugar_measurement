import 'dart:async';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/database.dart';
import '../data/shared_prefs.dart';

class HomeBloc extends Bloc {
  final AppDatabase _appDatabase = AppDatabase();
  final _alarmListController = StreamController<List<AlarmData>>();

  List<String> repeatedDaysList = [];

  Stream<List<AlarmData>> get listAlarmStream => _alarmListController.stream;

  Function(List<AlarmData>) get getListOfAlarm => _alarmListController.sink.add;

  HomeBloc(initialState) : super(initialState);

  String? alarmTime =
      "${TimeOfDay.now().hour.toString().padLeft(2, '0')}:${TimeOfDay.now().minute.toString().padLeft(2, '0')}";
  int? hour = TimeOfDay.now().hour;
  int? minutes = TimeOfDay.now().minute;
  String? period = TimeOfDay.now().period.name;
  int? periodId = TimeOfDay.now().period.index;
  bool? alarmStatus = false;
  String? repeatedDays = "";

  Future<void> setNewAlarm() async {
    print("object ${repeatedDaysList.join(',')}");
    await _appDatabase.insertAlarm(
      AlarmCompanion(
          minutes: Value(minutes!),
          alarmTime: Value(alarmTime),
          hour: Value(hour),
          alarmStatus: Value(alarmStatus),
          period: Value(period),
          repeatedDays: Value(repeatedDaysList.join(',')),
          userId: Value(UserSingleton().getUser!.userId),
          periodId: Value(periodId)),
    );
  }

  void getAlarm() async {
    getListOfAlarm(await _appDatabase.getAlarmList(
        userId: UserSingleton().getUser!.userId));
  }
}
