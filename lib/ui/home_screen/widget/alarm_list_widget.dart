import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';
import 'package:sugar_measurement/data/database.dart';

import 'alarm_item_widget.dart';

class AlarmListWidget extends StatefulWidget {
  const AlarmListWidget({Key? key}) : super(key: key);

  @override
  _AlarmListWidgetState createState() => _AlarmListWidgetState();
}

class _AlarmListWidgetState extends State<AlarmListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: StreamBuilder<List<AlarmData>>(
          initialData: const [],
          stream: BlocProvider.of<HomeBloc>(context).listAlarmStream,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) =>
                  AlarmItemWidget(alarmData: snapshot.data![index]),
            );
          }),
    );
  }
}
