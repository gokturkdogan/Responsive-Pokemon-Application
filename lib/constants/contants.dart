import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants{
  Constants._();

  static const String title = 'PokeApp';

  static TextStyle titleStyle(){
    return TextStyle(
      color: Colors.white,
      fontSize:  _calculateFontSize(48),
      fontWeight: FontWeight.bold
    );
  } 
   static TextStyle pokemonNameStyle(){
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(24),
      fontWeight: FontWeight.bold
    );
  } 
   static TextStyle chipStyle(){
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  } 


  static _calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }
    else{
      return (size*0.6).sp;
    }
  }

  static pokeInfoStyle(){
    return TextStyle(
      fontSize: _calculateFontSize(16),
      color: Colors.black
    );
  }

  static pokeInfoLabelStyle(){
    return TextStyle(
      fontSize: _calculateFontSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.black
    );
  }

} 