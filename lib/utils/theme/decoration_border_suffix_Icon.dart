import 'package:flutter/material.dart';

import 'package:sugar_measurement/utils/resources/color_scheme.dart';

InputDecoration decorationBorderSuffixIcon(
        {Widget? suffixIcon,
        String? hintText,
        String? errorMessage,
        double width = 3,
        double hintSize = 20,
        double borderRadius = 12,
        Color hintColor = ColorSchema.grayColor,
        FontWeight fontWeight = FontWeight.bold,
        Color borderColor = ColorSchema.whiteColor,
        EdgeInsetsGeometry? contentPadding}) =>
    InputDecoration(
      hintText: hintText,
      errorText: errorMessage,
      errorStyle: const TextStyle(height: .5),
      contentPadding: contentPadding,
      hintStyle: TextStyle(
          color: hintColor, fontSize: hintSize, fontWeight: fontWeight),
      border: InputBorder.none,
      suffixIcon: suffixIcon,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: borderColor, width: width)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide:
              BorderSide(color: ColorSchema.secondaryColor, width: width)),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide:
              BorderSide(color: ColorSchema.secondaryColor, width: width)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: BorderSide(color: borderColor, width: width)),
    );
