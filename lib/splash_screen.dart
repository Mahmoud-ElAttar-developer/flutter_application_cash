import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/add_task.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/home_view.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/widgets/home_header.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/upload/upload_view.dart';
import 'package:flutter_application_cash/routing.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
       const Duration(seconds: 5),(){
        pushtowithReplacment(context, const HomeView());
      }
    );
  }




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Lottie.asset('assets/Animation - 1704214319274.json'),
          
          const Gap(15),

          Text('TASKATIE',style : getTitleStyle(fontsize: 20,fontWeight: FontWeight.bold,color: AppColor.blackcolor),),
          

          const Text('it\'s time to get organized',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ],),
      ),
    );
  }
}