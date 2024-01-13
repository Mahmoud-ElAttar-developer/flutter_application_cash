import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_cash/core/Utiles/app_files.dart';
import 'package:google_fonts/google_fonts.dart';







TextStyle getTitleStyle({
  double fontsize=18,
FontWeight fontWeight=FontWeight.bold,
Color color=Colors.black
}){
  return GoogleFonts.lato(
    fontSize:fontsize,
    fontWeight: fontWeight,
    color: color,
  );
}

// --------------------------------------------------------------------------


TextStyle getBodyStyle({
    double fontsize=16,
  FontWeight fontWeight=FontWeight.normal,
  Color color=Colors.black
  }){
  return GoogleFonts.poppins(
    fontSize:fontsize,
    fontWeight: fontWeight,
    color: color,
  );
}



// --------------------------------------------------------------------------

TextStyle getSmallStyle({
  double fontsize=14,
  FontWeight fontWeight=FontWeight.normal,
  Color color=Colors.black
  }){
  return  TextStyle(
    fontSize:fontsize,
    fontWeight: fontWeight,
    color: color,
  );
}

// ----------------------------------------------------------------------------

TextStyle getSpare({
  double fontsize=20,
  FontWeight fontWeight=FontWeight.bold,
  Color color=const Color.fromARGB(255, 9, 37, 218),

}){
return TextStyle(
  fontSize:fontsize,
  fontWeight: fontWeight,
  color: color,
);
}