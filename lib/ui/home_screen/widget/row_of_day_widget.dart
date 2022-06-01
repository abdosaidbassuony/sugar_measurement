import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';

class RowOfDayWidget extends StatefulWidget {
  const RowOfDayWidget({Key? key}) : super(key: key);

  @override
  _RowOfDayWidgetState createState() => _RowOfDayWidgetState();
}

class _RowOfDayWidgetState extends State<RowOfDayWidget> {
  List<Days> days = [
    Days(dayName: "Mon"),
    Days(dayName: "Tue"),
    Days(dayName: "Wed"),
    Days(dayName: "Thu"),
    Days(dayName: "Fri"),
    Days(dayName: "Sat"),
    Days(dayName: "Sun"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: days
          .map((e) => InkWell(
                onTap: () => _selectDate(e),
                child: Container(
                  decoration: BoxDecoration(
                      color: e.selected! ? Colors.red : null,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  child: Text(
                    e.dayName!,
                    style: TextStyle(
                        fontSize: 12,
                        color: e.selected! ? Colors.white : Colors.black),
                  ),
                ),
              ))
          .toList(),
    );
  }

  _selectDate(Days e) {
    if (e.selected!) {
      BlocProvider.of<HomeBloc>(context).repeatedDaysList.remove(e.dayName);
    } else {
      BlocProvider.of<HomeBloc>(context).repeatedDaysList.add(e.dayName!);
    }
    setState(() {
      e.selected = !e.selected!;
    });
  }
}

class Days {
  String? dayName;
  bool? selected;

  Days({this.selected = false, this.dayName = ""});
}
