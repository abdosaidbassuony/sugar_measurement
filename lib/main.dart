import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/register_bloc.dart';
import 'package:sugar_measurement/ui/login_screen/screen/login_screen.dart';
import 'package:sugar_measurement/utils/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (BuildContext context) => AuthBloc(dynamic)),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sugar Measurement',
        theme: AppTheme().themeDataLight,
        home: const LoginScreen(),
      ),
    );
  }
}
