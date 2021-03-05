import 'package:flutter/material.dart';

import '../colors.dart';

class UnionTheme {
  static ThemeData lightTheme =
  ThemeData(brightness: Brightness.light,
      primaryColor: AppColors.backgroundDark,
      backgroundColor: Colors.white);

  static ThemeData darkTheme =
  ThemeData(brightness: Brightness.dark,
      primaryColor: AppColors.backgroundDark,
      backgroundColor: Colors.black);
}
