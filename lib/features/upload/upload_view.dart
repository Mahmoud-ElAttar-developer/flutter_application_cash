import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Services/local_storage.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';
import 'package:flutter_application_cash/core/widgets/custom_snackbar.dart';
import 'package:flutter_application_cash/core/widgets/custombuttons.dart';
// ignore: unused_import
import 'package:flutter_application_cash/features/home/add_task.dart';
import 'package:flutter_application_cash/features/home/home_view.dart';
import 'package:flutter_application_cash/routing.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

String?imagepath;
String name='';

class UploadView extends StatefulWidget {
  const UploadView({super.key});
    @override


  @override
  State<UploadView> createState() => _UploadViewState();
}

class _UploadViewState extends State<UploadView> {
  //   @override
  //     void initState() {
  //   super.initState();
  //   Future.delayed(
  //      const Duration(seconds: 5),(){
  //       pushtowithReplacment(context, const AddTask());
  //     }
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        surfaceTintColor: AppColor.whitecolor,
        backgroundColor: AppColor.whitecolor,
        actions:[TextButton(
          
          onPressed: (){

            if(imagepath!=null && name.isNotEmpty){
              AppLocal.cacheData('image', imagepath!);
              AppLocal.cacheData('name', name);
              pushtowithReplacment(context, const HomeView());

            }else if(imagepath==null && name.isNotEmpty){
              showErrorText(context, 'Please Upload your photo !');
        
            }
              else if(imagepath!=null && name.isEmpty){
                showErrorText(context, 'Please Enter your name');
               }
                else{
                  showErrorText(context, 'Please Upload your photo and your name !');
                }
             
            
          }, child: const Text('Done'))],
      ),






      body:  Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               CircleAvatar(
                radius: 90,
                backgroundImage:(imagepath!=null)
                ?FileImage(File(imagepath!)) as ImageProvider
                : const AssetImage('assets/usericon.webp'),
              ),
            
              const Gap(10),
              
              CustomButton(
                text: 'Upload from Camera',
                onPressed: (){
                  uploadFromcamera();
                },
              ),
            
              const Gap(15),
            
              CustomButton(
                text: 'Upload from Gallery',
                onPressed: (){
                  uploadFromGallery();
                },
              ),
            
              const Gap(15),
               Divider(
                indent: 15,
                endIndent: 15,
                color: AppColor.gryecolor,
              ),
            
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      name=value;
                    });

                  },
                  decoration: const InputDecoration(
                    hintText: 'Enter your name',
                  ),
                ),
              )
            
            
            
            
            
            
            ],),
          ),
        ),
      ),
    );


    //---------Method--------------------
  }
  uploadFromcamera() async {
   // ignore: unused_local_variable, non_constant_identifier_names
   final ImagePicked= await ImagePicker().pickImage(source: ImageSource.camera);
   if(ImagePicked !=null){
setState(() {
  imagepath = ImagePicked.path;
});

   }}


  uploadFromGallery() async {
   // ignore: unused_local_variable, non_constant_identifier_names
   final ImagePicked= await ImagePicker().pickImage(source: ImageSource.gallery);
   if(ImagePicked !=null){
setState(() {
  imagepath = ImagePicked.path;
});

   }}
}

