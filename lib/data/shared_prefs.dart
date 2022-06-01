import 'package:sugar_measurement/data/database.dart';
import 'package:sugar_measurement/data/user_model.dart';

class UserSingleton {
  static final UserSingleton _shopListSingleton = UserSingleton._internal();

  factory UserSingleton() {
    return _shopListSingleton;
  }

  UserSingleton._internal();

  static UserData? _user;

  static void setUser(UserData shopList) {
    _user = shopList;
  }

  UserData? get getUser {
    return _user;
  }
}
