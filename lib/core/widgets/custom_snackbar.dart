import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';

showErrorText(context,text){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: AppColor.redcolor,content:Text(text)));
}