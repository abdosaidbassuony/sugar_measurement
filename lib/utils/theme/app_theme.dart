import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sugar_measurement/utils/resources/color_scheme.dart';

class AppTheme {
  ThemeData get themeDataLight {
    return ThemeData(
      appBarTheme: appBarTheme,
      scaffoldBackgroundColor: ColorSchema.whiteColor,
      brightness: Brightness.light,
      primaryColor: ColorSchema.primaryColor,
      secondaryHeaderColor: ColorSchema.secondaryColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: ColorSchema.secondaryColor, // Your accent color
      ),
    );
  }

  AppBarTheme get appBarTheme {
    return const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
          systemStatusBarContrastEnforced: false),
      backgroundColor: ColorSchema.secondaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: ColorSchema.darkGrayColor),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: ColorSchema.darkGrayColor,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
