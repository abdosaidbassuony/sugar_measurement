import 'package:flutter/material.dart';

import '../resources/color_scheme.dart';

InputDecoration decorationBorder({
  String? hintText,
  double width = 3,
  double hintSize = 20,
  double borderRadius = 12,
  String? errorMessage,
  Color hintColor = ColorSchema.grayColor,
  FontWeight fontWeight = FontWeight.bold,
  Color borderColor = ColorSchema.whiteColor,
  EdgeInsetsGeometry hintPadding = const EdgeInsets.all(15.0),
}) =>
    InputDecoration(
        errorText: errorMessage,
        hintText: hintText,
        contentPadding: hintPadding,
        hintStyle: TextStyle(
            color: hintColor, fontSize: hintSize, fontWeight: fontWeight),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(color: borderColor, width: width)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: BorderSide(color: borderColor, width: width)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: const BorderSide(color: ColorSchema.secondaryColor)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide: const BorderSide(color: ColorSchema.secondaryColor)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            borderSide:
                BorderSide(color: ColorSchema.secondaryColor, width: width)));
