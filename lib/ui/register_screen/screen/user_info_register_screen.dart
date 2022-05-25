import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/register_screen/widget/user_info_register_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

class UserInfoRegisterScreen extends BaseStatefulWidget {
  const UserInfoRegisterScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() =>
      _UserInfoRegisterScreenState();
}

class _UserInfoRegisterScreenState extends BaseState<UserInfoRegisterScreen> {
  @override
  Widget baseBuild(BuildContext context) {
    return const UserInfoRegisterBodyWidget();
  }
}
