import 'package:flutter/material.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';


InputDecoration decorationLabelSuffixIcon({
  Widget? suffixIcon,
  String? hintText,
  String? errorMessage,
  double hintSize = 20,
  double borderRadius = 12,
  Color hintColor = ColorSchema.grayColor,
  FontWeight fontWeight = FontWeight.bold,
  Color backgroundColor = ColorSchema.whiteColor,
}) =>
    InputDecoration(
      contentPadding: const EdgeInsets.all(8),
      fillColor: backgroundColor,
      filled: true,
      hintText: hintText,
      errorText: errorMessage,
      hintStyle: TextStyle(
          color: hintColor, fontSize: hintSize, fontWeight: fontWeight),
      border: InputBorder.none,
      suffixIcon: suffixIcon ?? const SizedBox(),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backgroundColor)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: const BorderSide(color: ColorSchema.secondaryColor)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: const BorderSide(color: ColorSchema.secondaryColor)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backgroundColor)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: backgroundColor)),
    );
