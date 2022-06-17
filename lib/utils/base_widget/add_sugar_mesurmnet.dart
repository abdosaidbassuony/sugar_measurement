import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';

import '../resources/color_scheme.dart';
import '../theme/decoration_border.dart';

class AddSugarMeasurementAlert extends StatefulWidget {
  const AddSugarMeasurementAlert({Key? key}) : super(key: key);

  @override
  State<AddSugarMeasurementAlert> createState() =>
      _AddSugarMeasurementAlertState();
}

class _AddSugarMeasurementAlertState extends State<AddSugarMeasurementAlert> {
  String string = "";
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      height: MediaQuery.of(context).size.height / 3.5,
      width: double.infinity,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          const Text("Add Your Measurement"),
          const SizedBox(height: 10),
          TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  if (int.parse(value) >= 180) {
                    string = "High";
                  } else if (int.parse(value) <= 110) {
                    string = "Low";
                  } else if (int.parse(value) > 110 && int.parse(value) < 180) {
                    string = "Normal";
                  }
                });
              },
              decoration: decorationBorder(
                  hintText: "Your Measurement",
                  borderColor: ColorSchema.lightGrayColor,
                  hintSize: 14)),
          const SizedBox(height: 10),
          Text(string),
          const SizedBox(height: 10),
          CustomButtonWidget(
            buttonText: "Done",
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
