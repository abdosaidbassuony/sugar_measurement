import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/home_screen/widget/add_new_alarm_widget.dart';
import 'package:sugar_measurement/ui/home_screen/widget/alarm_list_widget.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewAlarm(context),
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          title: const Text("Sucrose"),
          backgroundColor: Colors.white),
      body: const AlarmListWidget(),
    );
  }

  _addNewAlarm(context) {
    showDialog(
        context: context,
        builder: (context) => const Dialog(child: AddNewAlarmWidget()));
  }
}
