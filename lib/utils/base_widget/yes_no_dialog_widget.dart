import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';

class YesNoDialogWidget extends StatelessWidget {
  final Function? yesButton;
  final Function? noButton;

  const YesNoDialogWidget({Key? key, this.noButton, this.yesButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3.5,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(children: [
        const Center(
          child: Text(
            "Alert",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const Center(
          child: Text(
            "Are you sure?",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const Spacer(),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: CustomButtonWidget(
                buttonText: "Yes",
                onPressed: () => yesButton!(),
              )),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: CustomButtonWidget(
                buttonText: "No",
                buttonColor: Colors.grey,
                borderColor: Colors.grey,
                onPressed: () => noButton!(),
              )),
            ],
          ),
        )
      ]),
    );
  }
}
