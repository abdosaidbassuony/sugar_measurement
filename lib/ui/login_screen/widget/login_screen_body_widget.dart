import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/register_bloc.dart';
import 'package:sugar_measurement/data/shared_prefs.dart';
import 'package:sugar_measurement/ui/login_screen/widget/register_text_widget.dart';
import 'package:sugar_measurement/ui/login_screen/widget/remember_me_check_box_widget.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';
import 'package:sugar_measurement/utils/theme/decoration_border.dart';

import '../../home_screen/screen/home_screen.dart';

class LoginScreenBodyWidget extends StatefulWidget {
  const LoginScreenBodyWidget({Key? key}) : super(key: key);

  @override
  State<LoginScreenBodyWidget> createState() => _LoginScreenBodyWidgetState();
}

class _LoginScreenBodyWidgetState extends State<LoginScreenBodyWidget> {
  String userName = "";

  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          title: const Text("Sucrose"),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                "images/logo.jpeg",
                height: 100,
                fit: BoxFit.fill,
                width: 100,
              ),
              const SizedBox(height: 50),
              TextFormField(
                onChanged: (value) {
                  userName = value;
                },
                decoration: decorationBorder(
                    hintText: "User Name",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onChanged: (value) {
                  password = value;
                },
                decoration: decorationBorder(
                    hintText: "Password",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const RememberMeCheckBoxWidget(),
              const SizedBox(height: 16),
              CustomButtonWidget(
                buttonText: "Login",
                buttonTextSize: 16,
                onPressed: () async {
                  setState(() {});
                  await BlocProvider.of<AuthBloc>(context)
                      .login(email: userName, password: password)
                      .then((value) {
                    print(" value is >>> ${value}");
                    if (value.isNotEmpty) {
                      UserSingleton.setUser(value.first);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                          (route) => false);
                    }
                  });
                },
              ),
              const SizedBox(height: 100),
              const RegisterTextWidget()
            ],
          ),
        ),
      ),
    );
  }
}
