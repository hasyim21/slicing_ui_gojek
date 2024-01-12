import 'package:flutter/material.dart';

import 'colors.dart';

class MyTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: greenColor,
    ),
    tabBarTheme: TabBarTheme(
      indicator: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      labelColor: darkGreenColor,
      unselectedLabelColor: whiteColor,
      dividerColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.tab,
    ),
  );
}
