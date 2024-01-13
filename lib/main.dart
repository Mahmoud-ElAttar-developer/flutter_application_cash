import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:flutter_application_cash/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unnecessary_import
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await Hive.openBox('User');
  await Hive.openBox<TaskModel>('Task');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: AppColor.blackcolor,
        primaryColorDark: AppColor.gryecolor,      
       useMaterial3: true,
        scaffoldBackgroundColor: AppColor.whitecolor,
        fontFamily: GoogleFonts.lato().fontFamily,
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
        
        
        ),
      home:const SplashView()
    );
  }
}
