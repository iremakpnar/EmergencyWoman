import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFeildStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins') ;
  }


  static TextStyle HeadlineTextFeildStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins') ;
  }

  static TextStyle LightTextFeildStyle(){
    return TextStyle(
        color: Colors.black38,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins') ;
  }

  static TextStyle semiBoldTextFeildStyle(){
    return TextStyle(
        color: Colors.black,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins') ;
  }


  static TextStyle colorHeadLineTextFeildStyle(){
    return TextStyle(
        color: Color(0xFFC3537A),
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins') ;
  }

  static TextStyle colorSemiBoldTextFeildStyle(){
    return TextStyle(
        color: Color(0xFFC3537A),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins') ;
  }
}