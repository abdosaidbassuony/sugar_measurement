import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';
import 'package:sugar_measurement/ui/home_screen/widget/home_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

import '../../../notification_service.dart';
import '../../../utils/base_widget/add_sugar_mesurmnet.dart';
import '../../../utils/base_widget/yes_no_dialog_widget.dart';

class HomeScreen extends BaseStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).getAlarm();
    notificationListener();
    super.initState();
  }

  void notificationListener() {
    NotificationService.onNotificationClick.stream.listen(_onNotificationClick);
  }

  void _onNotificationClick(String? data) {
    BlocProvider.of<HomeBloc>(context).onNotificationClickEvent("Notification");
  }

  @override
  Widget baseBuild(BuildContext context) {
    return StreamBuilder<String?>(
        stream: BlocProvider.of<HomeBloc>(context).onNotificationClickStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("object");
            SchedulerBinding.instance!.addPostFrameCallback((timeStamp) {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) =>
                      const Dialog(child: AddSugarMeasurementAlert()));
            });

            BlocProvider.of<HomeBloc>(context).onNotificationClickEvent(null);
          }
          return const HomeBodyWidget();
        });
  }
}
