import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';

import '../../../notification_service.dart';

class RowOfActionButton extends StatelessWidget {
  const RowOfActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButtonWidget(
          buttonText: "Set Time",
          onPressed: () {
            BlocProvider.of<HomeBloc>(context)
                .setNewAlarm()
                .then((value) => BlocProvider.of<HomeBloc>(context).getAlarm());
            BlocProvider.of<HomeBloc>(context).repeatedDaysList.clear();
            NotificationService().showNotification(
                1, "Notification_title.text", "Notification_descrp.text");
            Navigator.pop(context);
          },
        )),
        const SizedBox(width: 8),
        Expanded(
            child: CustomButtonWidget(
          buttonText: "Cancel",
          borderColor: ColorSchema.grayColor,
          buttonColor: ColorSchema.grayColor,
          onPressed: () {
            BlocProvider.of<HomeBloc>(context).repeatedDaysList.clear();
            Navigator.pop(context);
          },
        )),
      ],
    );
  }
}
