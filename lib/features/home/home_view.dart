import 'package:date_picker_timeline/date_picker_widget.dart';
// ignore: unused_import
import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/widgets/custombuttons.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/add_task.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/empty_task.dart';
import 'package:flutter_application_cash/features/home/widgets/home_header.dart';
import 'package:flutter_application_cash/features/home/widgets/todayhaeder.dart';
// ignore: unused_import
import 'package:flutter_application_cash/routing.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  //  @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(
  //      const Duration(seconds: 5),(){
  //       pushtowithReplacment(context, const AddTask());
  //     }
  //   );
  // }
  @override
  Widget build(BuildContext context) {
  var date = DateFormat.MMMMd().format(DateTime.now());
    return   Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const HomeHeader(),
    
            const Gap(15),

            // const EmptyTask(),



            const Gap(15),
    
             TodayHeaderWedgit(date: date),
    
             const Gap(15),
    
             DatePicker(
      DateTime.now(),
      dateTextStyle:Theme.of(context).textTheme.displayMedium!,
      monthTextStyle: Theme.of(context).textTheme.displayMedium!,
      dayTextStyle: Theme.of(context).textTheme.displayMedium!,
      height: 100,
      width: 80,
      initialSelectedDate: DateTime.now(),
      selectionColor:AppColor.bluecolor,
      selectedTextColor: Colors.white,
      onDateChange: (date) {
        // New date selected
        // setState(() {
        //   _selectedValue = date;
        // });
      },
    ),
    
    Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: AppColor.bluecolor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Flutter Task -1',style: getSpare(color:AppColor.whitecolor,),),
              const Gap(10),
              Row(children: [
                Icon(Icons.watch_later,color:AppColor.whitecolor,),
                const Gap(5),
                Text('4:00 PM : 5:05 PM',style: getSmallStyle(color:AppColor.whitecolor,),),
              ],
              ),
              const Gap(10),
              Text('Flutter Task Note',style: getBodyStyle(color:AppColor.whitecolor,),),
            ],
            ),
            const Spacer(),
            Container(
              color: AppColor.whitecolor,
              width: 0.5,
              height: 80,
            ),
            const Gap(5),
            RotatedBox(quarterTurns: 3, child: Text('ToDo',style: getTitleStyle(color: AppColor.whitecolor),))
          ],),
        );
      },),
    )
    
    
    
          ],
        ),
        
      ),
      
    );
  }
}


