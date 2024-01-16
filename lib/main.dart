import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Model/task_model.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:flutter_application_cash/core/themes.dart';
import 'package:flutter_application_cash/splash_screen.dart';
// ignore: unused_import
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
      themeMode:ThemeMode.dark,
      darkTheme: darkThem,
      theme: lightThem,
      home:const SplashView()
    );
  }
}




