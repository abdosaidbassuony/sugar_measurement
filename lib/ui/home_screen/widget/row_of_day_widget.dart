import 'package:flutter/material.dart';

class RowOfDayWidget extends StatefulWidget {
  const RowOfDayWidget({Key? key}) : super(key: key);

  @override
  _RowOfDayWidgetState createState() => _RowOfDayWidgetState();
}

class _RowOfDayWidgetState extends State<RowOfDayWidget> {
  List days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: days
          .map((e) => InkWell(
                onTap: () => _selectDate(),
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
                  child: Text(e),
                ),
              ))
          .toList(),
    );
  }

  _selectDate() {}
}
