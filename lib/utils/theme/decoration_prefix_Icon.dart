import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';


InputDecoration decorationPrefixIcon({
  Widget? prefixIcon,
  String? hintText,
  double hintSize = 20,
  double borderRadius = 12,
  Color hintColor = ColorSchema.grayColor,
  FontWeight fontWeight = FontWeight.bold,
  Color backGroundColor = ColorSchema.whiteColor,
}) =>
    InputDecoration(
      fillColor: backGroundColor,
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
          color: hintColor, fontSize: hintSize, fontWeight: fontWeight),
      border: InputBorder.none,
      prefixIcon: prefixIcon!,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backGroundColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backGroundColor)),
    );
