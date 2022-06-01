import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/home_bloc.dart';
import 'package:sugar_measurement/ui/home_screen/widget/home_body_widget.dart';
import 'package:sugar_measurement/utils/base_widget/base_stateful_widget.dart';

class HomeScreen extends BaseStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  BaseState<BaseStatefulWidget> baseCreateState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeBloc>(context).getAlarm();
    super.initState();
  }

  @override
  Widget baseBuild(BuildContext context) {
    return const HomeBodyWidget();
  }
}
