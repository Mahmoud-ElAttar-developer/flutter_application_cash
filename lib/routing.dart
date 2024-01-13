import 'package:flutter/material.dart';

// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

pushto(context,Widget newScreen){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>newScreen));
}


pushtowithReplacment(context,newScreen){

Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context) => newScreen));

}