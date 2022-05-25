import 'package:drift/drift.dart';

class User extends Table {
  IntColumn get userId => integer().autoIncrement()();

  TextColumn get userName =>
      text().withDefault(const Constant("")).nullable()();

  TextColumn get userEmail =>
      text().withDefault(const Constant("")).nullable()();

  TextColumn get password =>
      text().withDefault(const Constant("")).nullable()();

  TextColumn get mobileNumber1 =>
      text().withDefault(const Constant("")).nullable()();

  TextColumn get mobileNumber2 =>
      text().withDefault(const Constant("")).nullable()();

  TextColumn get mobileNumber3 =>
      text().withDefault(const Constant("")).nullable()();

  IntColumn get age => integer().withDefault(const Constant(0)).nullable()();

  IntColumn get genderId => intEnum<GenderType>()
      .withDefault(Constant(GenderType.male.index))
      .nullable()();

  IntColumn get sugarTypeId =>
      integer().withDefault(const Constant(-1)).nullable()();

  RealColumn get weight => real().withDefault(const Constant(0.0)).nullable()();

  @override
  Set<Column>? get primaryKey => {userId};
}

enum GenderType { male, female }
