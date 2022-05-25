import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/bloc/register_bloc.dart';
import 'package:sugar_measurement/data/user_model.dart';
import 'package:sugar_measurement/ui/home_screen/screen/home_screen.dart';
import 'package:sugar_measurement/utils/base_widget/yes_no_dialog_widget.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';
import 'package:sugar_measurement/utils/theme/decoration_border.dart';

class EmergencyNumbersBodyWidget extends StatelessWidget {
  const EmergencyNumbersBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                  child: Text(
                "Enter emergency numbers (at least one number)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
              const SizedBox(height: 50),
              TextFormField(
                  decoration: decorationBorder(
                      hintText: "Phone Number 1",
                      borderColor: ColorSchema.lightGrayColor,
                      hintSize: 14)),
              const SizedBox(height: 16),
              TextFormField(
                  decoration: decorationBorder(
                      hintText: "Phone Number 2",
                      borderColor: ColorSchema.lightGrayColor,
                      hintSize: 14)),
              const SizedBox(height: 16),
              TextFormField(
                  decoration: decorationBorder(
                      hintText: "Phone Number 3",
                      borderColor: ColorSchema.lightGrayColor,
                      hintSize: 14)),
              const SizedBox(height: 50),
              CustomButtonWidget(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => Dialog(
                      child: YesNoDialogWidget(
                    noButton: () {
                      Navigator.pop(context);
                    },
                    yesButton: () async {
                      await BlocProvider.of<AuthBloc>(context)
                          .registerNewUser(
                              weight: 100,
                              age: 25,
                              password: "123",
                              genderType: GenderType.male,
                              mobileNumber1: "010",
                              sugarType: 0,
                              userEmail: "test@test",
                              username: "test")
                          .then((value) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (route) => false);
                      });
                    },
                  )),
                ),
                buttonText: "Register",
              )
            ],
          ),
        ),
      ),
    );
  }
}
