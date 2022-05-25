import 'package:flutter/material.dart';

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
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => const AlarmItemWidget(),
      ),
    );
  }
}
