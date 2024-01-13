import 'package:flutter/material.dart';
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:flutter_application_cash/core/Utiles/textstyles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
     required this.text,
     required this.onPressed,
     this.width=250, this.style
  });

  final String text;
  final TextStyle? style;
  final double width;
  final Function()?onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.bluecolor,
          shape: ContinuousRectangleBorder(
            borderRadius:BorderRadius.circular(20) 
            ),
        ),
        onPressed: onPressed,
         
         child: Text(text,
        style: style?? getBodyStyle(color:AppColor.whitecolor,fontWeight: FontWeight.bold),)),
    );
  }
}