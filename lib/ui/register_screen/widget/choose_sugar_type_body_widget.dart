import 'package:flutter/material.dart';
import 'package:sugar_measurement/ui/register_screen/screen/emergency_numbers_screen.dart';
import 'package:sugar_measurement/utils/custom_button_widget.dart';

class ChooseSugarTypeBodyWidget extends StatefulWidget {
  const ChooseSugarTypeBodyWidget({Key? key}) : super(key: key);

  @override
  _ChooseSugarTypeBodyWidgetState createState() =>
      _ChooseSugarTypeBodyWidgetState();
}

class _ChooseSugarTypeBodyWidgetState extends State<ChooseSugarTypeBodyWidget> {
  int? _value = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Choose your sugar type ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Radio<int>(
                  value: 0,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  groupValue: _value,
                ),
                const Text("A")
              ],
            ),
            Row(
              children: [
                Radio<int>(
                  value: 1,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                    print("object $value");
                  },
                  groupValue: _value,
                ),
                const Text("B")
              ],
            ),
            const Spacer(),
            CustomButtonWidget(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmergencyNumbersScreen(),
                  )),
              buttonText: "Next",
            )
          ],
        ),
      ),
    );
  }
}
