import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';
import 'package:flutter_application_cash/core/widgets/custombuttons.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/add_task.dart';
import 'package:flutter_application_cash/routing.dart';

class TodayHeaderWedgit extends StatelessWidget {
  const TodayHeaderWedgit({
    super.key,
    required this.date,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
        Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Text(date,style: getSpare(fontsize: 18),),
          Text('Today',style: getSpare(fontsize: 18),),
                           
        ],),
        const Spacer(),
        CustomButton(width: 135,text: '+AddTask',
        
         onPressed: (){
          pushto(context, const AddTask());
         })
       ],
       );
  }
}
