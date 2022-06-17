import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/register_bloc.dart';
import 'package:sugar_measurement/ui/login_screen/widget/login_screen_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

import '../../../notification_service.dart';
import '../../../utils/base_widget/yes_no_dialog_widget.dart';

class LoginScreen extends BaseStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreen> {
  AuthBloc? authBloc;

  @override
  void initState() {
    // TODO: implement initState
    authBloc = BlocProvider.of<AuthBloc>(context);
    notificationListener();
    super.initState();
  }

  void notificationListener() {
    NotificationService.onNotificationClick.stream.listen(_onNotificationClick);
  }

  void _onNotificationClick(String? data) {
    authBloc!.onNotificationClickEvent("Notification");
  }

  @override
  Widget baseBuild(BuildContext context) {
    return StreamBuilder<String?>(
        stream: BlocProvider.of<AuthBloc>(context).onNotificationClickStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("object");

            showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => const YesNoDialogWidget());
            authBloc!.onNotificationClickEvent(null);
          }
          return const LoginScreenBodyWidget();
        });
  }
}
