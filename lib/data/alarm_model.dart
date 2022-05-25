import 'package:drift/drift.dart';

class Alarm extends Table {
  IntColumn get alarmId => integer().autoIncrement()();

  IntColumn get userId => integer().withDefault(const Constant(0)).nullable()();

  TextColumn get alarmTime =>
      text().withDefault(const Constant("")).nullable()();

  IntColumn get hour => integer().withDefault(const Constant(0)).nullable()();

  IntColumn get minutes =>
      integer().withDefault(const Constant(0)).nullable()();

  TextColumn get period =>
      text().withDefault(const Constant("am")).nullable()();

  IntColumn get periodId =>
      integer().withDefault(const Constant(0)).nullable()();

  BoolColumn get alarmStatus =>
      boolean().withDefault(const Constant(false)).nullable()();

  TextColumn get repeatedDays =>
      text().withDefault(const Constant("")).nullable()();
}
