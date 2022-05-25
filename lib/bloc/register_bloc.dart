import 'package:drift/drift.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/data/database.dart';
import 'package:sugar_measurement/data/user_model.dart';

class AuthBloc extends Bloc {
  final AppDatabase _appDatabase = AppDatabase();

  AuthBloc(initialState) : super(initialState);

  Future<void> registerNewUser({
    String? username,
    String? password,
    String? userEmail,
    int? age,
    int? sugarType,
    double? weight,
    GenderType? genderType,
    String? mobileNumber1,
    String? mobileNumber2,
    String? mobileNumber3,
  }) async {
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
}
