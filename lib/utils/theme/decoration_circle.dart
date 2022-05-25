import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';


InputDecoration decorationCircle({
  String? hintText,
  double hintSize = 20,
  double borderRadius = 12,
  Color hintColor = ColorSchema.grayColor,
  FontWeight fontWeight = FontWeight.bold,
  Color backgroundColor = ColorSchema.whiteColor,
}) =>
    InputDecoration(
      fillColor: backgroundColor,
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
          color: hintColor, fontSize: hintSize, fontWeight: fontWeight),
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backgroundColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backgroundColor)),
    );
