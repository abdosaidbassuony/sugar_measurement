import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/register_screen/widget/choose_sugar_type_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

class ChooseSugarTypeScreen extends BaseStatefulWidget {
  const ChooseSugarTypeScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() =>
      _ChooseSugarTypeScreenState();
}

class _ChooseSugarTypeScreenState extends BaseState<ChooseSugarTypeScreen> {
  @override
  Widget baseBuild(BuildContext context) {
    return const ChooseSugarTypeBodyWidget();
  }
}
