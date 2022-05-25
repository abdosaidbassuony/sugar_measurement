import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/home_screen/widget/row_of_action_button.dart';
import 'package:sugar_measurement/ui/home_screen/widget/row_of_day_widget.dart';
import 'package:sugar_measurement/ui/home_screen/widget/time_of_day_widget.dart';

class AddNewAlarmWidget extends StatefulWidget {
  const AddNewAlarmWidget({Key? key}) : super(key: key);

  @override
  _AddNewAlarmWidgetState createState() => _AddNewAlarmWidgetState();
}

class _AddNewAlarmWidgetState extends State<AddNewAlarmWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      padding: const EdgeInsets.all(30),
      child: Column(
        children: const [
          TimeOfDayWidget(),
          RowOfDayWidget(),
          Spacer(),
          RowOfActionButton(),
        ],
      ),
    );
  }
}
