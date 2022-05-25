import 'package:flutter/material.dart';

class SemiBoldTextWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;

  const SemiBoldTextWidget(
      {Key? key,
      required this.text,
      required this.fontSize,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
