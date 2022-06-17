import 'dart:core';

import 'package:drift/drift.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sugar_measurement/data/database.dart';
import 'package:sugar_measurement/data/user_model.dart';

class AuthBloc extends Bloc {
  final AppDatabase _appDatabase = AppDatabase();
  final _onNotificationClick = BehaviorSubject<String?>();

  Stream<String?> get onNotificationClickStream => _onNotificationClick.stream;

  Function(String?) get onNotificationClickEvent =>
      _onNotificationClick.sink.add;

  AuthBloc(initialState) : super(initialState);
  String? username;
  String? password;
  String? userEmail;
  String? mobileNumber1;
  String? mobileNumber2;
  String? mobileNumber3;
  int? age;
  int? sugarType = 1;
  double? weight;
  GenderType? genderType = GenderType.male;

  Future<void> registerNewUser() async {
    await _appDatabase.insertUser(UserCompanion(
      userName: Value(username!),
      password: Value(password!),
      age: Value(age!),
      genderId: Value(genderType!),
      sugarTypeId: Value(sugarType!),
      userEmail: Value(userEmail!),
      weight: Value(weight!),
      mobileNumber1: Value(mobileNumber1),
      mobileNumber2: Value(mobileNumber2),
      mobileNumber3: Value(mobileNumber3),
    ));
  }

  Future<List<UserData>> login({String? email, String? password}) async {
    return await _appDatabase.getUser(email: email, password: password);
  }

  void onNotificationClick() {}

  @override
  Future<void> close() {
    _onNotificationClick.close();
    return super.close();
  }
}
