import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';

class RowOfActionButton extends StatelessWidget {
  const RowOfActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButtonWidget(
          buttonText: "Set Time",
          onPressed: () => Navigator.pop(context),
        )),
        const SizedBox(width: 8),
        Expanded(
            child: CustomButtonWidget(
          buttonText: "Cancel",
          borderColor: ColorSchema.grayColor,
          buttonColor: ColorSchema.grayColor,
          onPressed: () => Navigator.pop(context),
        )),
      ],
    );
  }
}
