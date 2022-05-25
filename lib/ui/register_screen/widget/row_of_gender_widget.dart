import 'package:flutter/material.dart';

class RowOfGenderWidget extends StatefulWidget {
  const RowOfGenderWidget({Key? key}) : super(key: key);

  @override
  _RowOfGenderWidgetState createState() => _RowOfGenderWidgetState();
}

class _RowOfGenderWidgetState extends State<RowOfGenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        const Text("Gender:"),
        Row(
          children: [
            Radio(
              value: 1,
              onChanged: (value) {},
              groupValue: 1,
            ),
            const Text("Male")
          ],
        ),
        Row(
          children: [
            Radio(
              value: 0,
              onChanged: (value) {},
              groupValue: 1,
            ),
            const Text("Female")
          ],
        ),
      ],
    );
  }
}
