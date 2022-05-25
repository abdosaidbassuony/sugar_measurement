import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:sugar_measurement/ui/register_screen/screen/user_info_register_screen.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';

class RegisterTextWidget extends StatelessWidget {
  const RegisterTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("you do not have an account "),
        Expanded(
          child: InkWell(
            onTap: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserInfoRegisterScreen()));
            },
            child: const Text(
              "Create New Account!",
              style: TextStyle(
                  color: ColorSchema.darkGrayColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
