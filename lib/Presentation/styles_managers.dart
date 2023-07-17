//text style 
import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle  _getTextstyle (double fontSize , FontWeight fontWeight, Color color ){
  return TextStyle( fontSize:fontSize, 
  fontFamily: FontConstants.fontFamily ,
  color: color ,
  fontWeight: fontWeight);
}
//bold style 
TextStyle getBoldStyle({double fontSize=FontSize.s14,required Color color}){
  return _getTextstyle(fontSize ,FontWightManager.Bold ,color);
}
//regular style (text , button ...)
TextStyle getRegularStyle({double fontSize=FontSize.s14,required Color color}){
  return _getTextstyle(fontSize ,FontWightManager.Regular ,color);
}
//italic style
TextStyle getItalicStyle({double fontSize=FontSize.s14,required Color color}){
  return _getTextstyle(fontSize ,FontWightManager.Italic ,color);
}