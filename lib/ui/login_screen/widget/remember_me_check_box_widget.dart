import 'package:flutter/material.dart';

class RememberMeCheckBoxWidget extends StatefulWidget {
  const RememberMeCheckBoxWidget({Key? key}) : super(key: key);

  @override
  _RememberMeCheckBoxWidgetState createState() =>
      _RememberMeCheckBoxWidgetState();
}

class _RememberMeCheckBoxWidgetState extends State<RememberMeCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        const Text("Remember Me")
      ],
    );
  }
}
