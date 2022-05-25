import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sugar_measurement/data/alarm_model.dart';
import 'package:sugar_measurement/data/user_model.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [User, Alarm])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<AlarmData>> getAlarmList({int? userId}) async {
    return await (select(alarm)..where((tbl) => tbl.userId.equals(userId)))
        .get();
  }

  Future<List<UserData>> getUser({String? email, String? password}) async {
    return await (select(user)
          ..where((tbl) =>
              tbl.password.equals(password) & tbl.userEmail.equals(email)))
        .get();
  }

  Future<int> insertAlarm(AlarmCompanion alarmCompanion) async {
    return await into(alarm).insert(alarmCompanion);
  }

  Future<int> insertUser(UserCompanion userCompanion) async {
    return await into(user).insert(userCompanion);
  }
}
