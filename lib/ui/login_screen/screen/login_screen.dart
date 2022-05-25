import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/login_screen/widget/login_screen_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreen> {
  @override
  Widget baseBuild(BuildContext context) {
    return  LoginScreenBodyWidget();
  }
}
