import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';
import 'package:flutter_application_cash/core/widgets/custombuttons.dart';
import 'package:flutter_application_cash/features/home/home_view.dart';
import 'package:flutter_application_cash/routing.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {


var titlecon=TextEditingController();
var notecon=TextEditingController();
var date=DateFormat.MMMMEEEEd().format(DateTime.now());
var starttime=DateFormat('hh:mm a').format(DateTime.now());
var endtime=DateFormat('hh:mm a').format(DateTime.now().add(const Duration(minutes: 15)));
int colorIndex=0;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.arrow_back_ios_new),
        title: Text('Add Task',style: getSpare(),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Title',style: getTitleStyle()),
              ],
            ),
            TextFormField(
              controller: titlecon ,
              decoration: InputDecoration(
                hintText: 'Enter Title here',
                enabledBorder:UnderlineInputBorder (
                  borderRadius: BorderRadius.circular(15)
                )
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Title is required*';
                }
                return null;
              },
            ),
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Note',style: getTitleStyle()),
              ],
            ),
            TextFormField(
              maxLines: 4,
              controller: notecon ,
              decoration: InputDecoration(
                hintText: 'Enter Note here',
                enabledBorder:UnderlineInputBorder (
                  borderRadius: BorderRadius.circular(15)
                )
              ),
                validator: (value){
                if(value!.isEmpty){
                  return 'Note is required*';
                }
                return null;
              },
            ),
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Date',style: getTitleStyle()),
              ],
            ),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: date,
                hintStyle: getBodyStyle(),
                suffixIcon: 
                IconButton(onPressed: (){
                  getTaskDate();
                }, icon: const Icon(Icons.date_range_rounded,color: Colors.grey,))
                ,
                enabledBorder:UnderlineInputBorder (
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            const Gap(30),
             Row(
              children: [

                Expanded(
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Start Time',style: getTitleStyle(),),
                      ],
                    ),
                     TextFormField(
                      readOnly: true,
                     decoration: InputDecoration(
                hintText: starttime,
                hintStyle: getBodyStyle(),
                suffixIcon: IconButton(onPressed: (){
                    getTaskStartTime();
                },icon:const Icon(Icons.watch_later_outlined,color: Colors.grey,)),
                enabledBorder:UnderlineInputBorder (
                  borderRadius: BorderRadius.circular(15)
                )
              ),
                 
                  ),
                  
                  ],),
                ),

                Expanded(
                  child: Column(children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('End Time',style: getTitleStyle(),),
                      ],
                    ),
                    TextFormField(
                     readOnly: true,
                     decoration: InputDecoration(
                hintText: endtime,
                hintStyle: getBodyStyle(),
                suffixIcon: IconButton(onPressed: (){
                    getTaskEndTime();
                },icon:const Icon(Icons.watch_later_outlined,color: Colors.grey,)),
                enabledBorder:UnderlineInputBorder (
                  borderRadius: BorderRadius.circular(15)
                )
              ),
                
                  ),
                    
                  ],),
                )
                
              ],
            ),
            const Gap(40),

            Row(children: [
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Color',style: getTitleStyle(),),
                  ],
                ),
                const Gap(15),
                Row(
                  children: [



                  // ------------------------------------1
                    GestureDetector(
                      onTap:(){
                        setState(() {
                          colorIndex=0;
                        });
                      },
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColor.bluecolor,
                        child:
                        colorIndex==0?
                         Icon(Icons.check,color: AppColor.whitecolor):const SizedBox(),
                      ),
                    ),
                    
                    // --------------------------------------2
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(  
                           onTap:(){
                        setState(() {
                          colorIndex=2;
                        });
                      },
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: AppColor.redcolor,
                              child:
                            colorIndex==2?
                             Icon(Icons.check,color: AppColor.whitecolor):const SizedBox(),
                            ),
                          ),
                        ),
                // -------------------------------------------3
                    GestureDetector(
                           onTap:(){
                        setState(() {
                          colorIndex=3;
                        });
                      },
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColor.yellowcolor,
                        child:
                          colorIndex==3?
                           Icon(Icons.check,color: AppColor.whitecolor):const SizedBox(),
                      ),
                    )



                  ],
                ),
                
              ],),
              const Spacer(),

              CustomButton(text: 'Creat task',
              width: 150,
               onPressed: (){
                pushtowithReplacment(context, const HomeView());
               })
            ],
            ),


          ],
          ),
        ),
      ),
    );
  }
  getTaskDate(){
    showDatePicker(
      context: context, firstDate: DateTime.now(),
    initialDate: DateTime.now(),
     lastDate: DateTime(2050)).then((value){
      if(value !=null){
 setState(() {
        date=DateFormat.yMEd().format(value);
      });

      }
     
     });
  }

  getTaskStartTime(){
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value){
          if(value !=null){
 setState(() {
        starttime=value.format(context);  
       
        endtime=value.replacing(hour: value.hour+1,minute:value.minute+15).format(context);
      });

      }
    });
  }

   getTaskEndTime(){
    showTimePicker(context: context, initialTime: TimeOfDay.now()).then((value){
          if(value !=null){
 setState(() {
        endtime=value.format(context);
      });

      }
    });
  }

}

