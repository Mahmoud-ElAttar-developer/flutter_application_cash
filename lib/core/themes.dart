import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';

final lightThem=ThemeData(
  scaffoldBackgroundColor: AppColor.whitecolor,
  textTheme: TextTheme(
    displayLarge: getSpare(color: AppColor.blackcolor),
    displayMedium: getBodyStyle(color: AppColor.blackcolor),
    displaySmall: getSmallStyle(color: AppColor.blackcolor),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle: getTitleStyle(),
    iconTheme: IconThemeData(color: AppColor.bluecolor),
    backgroundColor: AppColor.bluecolor,
    elevation: 0),
            inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
        )
      

  );


final darkThem=ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 36, 32, 32),
  appBarTheme: AppBarTheme(
    titleTextStyle: getTitleStyle(color: AppColor.whitecolor),
    iconTheme: IconThemeData(color: AppColor.bluecolor),
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    elevation: 0),
    textTheme: TextTheme(
    displayLarge: getSpare(color: AppColor.whitecolor),
    displayMedium: getBodyStyle(color: AppColor.whitecolor),
    displaySmall: getSmallStyle(),
  ),
    inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15), 
          ),
        )
);