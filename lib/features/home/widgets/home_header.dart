import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Services/local_storage.dart';
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/widgets/custombuttons.dart';
import 'package:flutter_application_cash/features/upload/upload_view.dart';
// ignore: unused_import
import 'package:gap/gap.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({
    super.key,
  });

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {

  String?imagePath;
  String?name;
 


 @override
  void initState() {
    super.initState();
    AppLocal.getcachedData('image').then((value){
      setState(() {
        imagePath = value;
      });
    });
    AppLocal.getcachedData('name').then((value){
      setState(() {
        name = value;
      });
    });
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
           // Text('Hello Sir.',style: getSpare(),),
           Text.rich(TextSpan(children:[
             TextSpan(text:'Hello , ',style: getTitleStyle()),
             TextSpan(text:name,style: getSpare()),
           ]
            )
            ),
           const Text('Have a nice day !')
         ],),


        const Spacer(),

        
         CircleAvatar(
           radius: 50,
           backgroundImage:(imagepath!=null)
                    ?FileImage(File(imagepath!)) as ImageProvider
                    : const AssetImage('assets/usericon.webp'),
         )
        ],
        ),
      ],
    );
  }
}