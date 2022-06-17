import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';

class TimeOfDayWidget extends StatefulWidget {
  const TimeOfDayWidget({Key? key}) : super(key: key);

  @override
  State<TimeOfDayWidget> createState() => _TimeOfDayWidgetState();
}

class _TimeOfDayWidgetState extends State<TimeOfDayWidget> {
  int? hour = TimeOfDay.now().hour;
  int? minute = TimeOfDay.now().minute;
  String? timePeriod = TimeOfDay.now().period.name;
  HomeBloc? homeBloc;

  @override
  void initState() {
    homeBloc = BlocProvider.of<HomeBloc>(context);

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hours = hour.toString().padLeft(2, '0');
    final minutes = minute.toString().padLeft(2, '0');
    return InkWell(
      onTap: () {
        showTimePicker(context: context, initialTime: TimeOfDay.now())
            .then((value) {
          if (value != null) {
            TimeOfDay timeOfDay = value;
            homeBloc!.timeOfDay =TimeOfDay.now();
            setState(() {
              hour = timeOfDay.hour;
              minute = timeOfDay.minute;
              timePeriod = timeOfDay.period.name;
              homeBloc!.alarmTime =
                  "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
              homeBloc!.hour = hour;
              homeBloc!.minutes = minute;
              homeBloc!.period = timePeriod;
              homeBloc!.periodId = timeOfDay.period.index;
              homeBloc!.timeOfDay = timeOfDay;
            });
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$hours : $minutes",
            style: const TextStyle(
              fontSize: 50,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Text(timePeriod!, style: const TextStyle(fontSize: 16)),
          )
        ],
      ),
    );
  }
}
