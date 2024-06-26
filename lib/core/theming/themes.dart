import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'colors.dart';

final ThemeData lightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
    scrolledUnderElevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    backgroundColor: Color(0xff20272D),
    iconTheme: IconThemeData(
      color: Colors.black ,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff212021),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white,
  ),
  scaffoldBackgroundColor:AppColors.scaffoldBackground,
  primaryColor: AppColors.primaryColor,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor)
      .copyWith(background: Colors.white),
);

final ThemeData darkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    elevation: 0,
    scrolledUnderElevation: 0,
    color: Color(0xff20272D),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xff212021),
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey[600],
  ),
  scaffoldBackgroundColor: AppColors.scaffoldBackground,
  primaryColor: const Color(0xff10151C),
  colorScheme:
      ColorScheme.fromSwatch().copyWith(background: const Color(0xff10151C)),
);

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.wave
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 35.0
    ..radius = 10.0
    ..userInteractions = false
    ..dismissOnTap = false;
}
