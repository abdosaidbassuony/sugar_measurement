import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/register_screen/widget/emergency_numbers_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

class EmergencyNumbersScreen extends BaseStatefulWidget {
  const EmergencyNumbersScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() =>
      _EmergencyNumbersScreenState();
}

class _EmergencyNumbersScreenState extends BaseState<EmergencyNumbersScreen> {
  @override
  Widget baseBuild(BuildContext context) {
    return  EmergencyNumbersBodyWidget();
  }
}
