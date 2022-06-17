import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sugar_measurement/ui/register_screen/screen/choose_sugar_type_screen.dart';
import 'package:sugar_measurement/ui/register_screen/widget/row_of_gender_widget.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';
import 'package:sugar_measurement/utils/theme/decoration_border.dart';

import '../../../bloc/register_bloc.dart';

class UserInfoRegisterBodyWidget extends StatelessWidget {
  const UserInfoRegisterBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          centerTitle: true,
          title: const Text("Sucrose"),
          backgroundColor: Colors.white),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) =>
                    BlocProvider.of<AuthBloc>(context).username = value,
                decoration: decorationBorder(
                    hintText: "First Name",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: decorationBorder(
                    hintText: "Last Name",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) =>
                    BlocProvider.of<AuthBloc>(context).age = int.parse(value),
                decoration: decorationBorder(
                    hintText: "Age",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) =>
                    BlocProvider.of<AuthBloc>(context).userEmail = value,
                decoration: decorationBorder(
                    hintText: "Email",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                onChanged: (value) =>
                    BlocProvider.of<AuthBloc>(context).password = value,
                decoration: decorationBorder(
                    hintText: "Password",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) => BlocProvider.of<AuthBloc>(context)
                    .weight = double.parse(value),
                decoration: decorationBorder(
                    hintText: "Weight",
                    borderColor: ColorSchema.lightGrayColor,
                    hintSize: 14),
              ),
              const SizedBox(
                height: 16,
              ),
              const RowOfGenderWidget(),
              const SizedBox(
                height: 32,
              ),
              CustomButtonWidget(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseSugarTypeScreen(),
                    )),
                buttonText: "Next",
              )
            ],
          ),
        ),
      ),
    );
  }
}
