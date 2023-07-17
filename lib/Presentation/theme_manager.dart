import 'package:flutter/material.dart';
import 'package:project/Presentation/color_manager.dart';
import 'package:project/Presentation/font_manager.dart';
import 'package:project/Presentation/styles_managers.dart';
import 'package:project/Presentation/values.dart';

ThemeData getApplicationTheme(){
return ThemeData(
//main colors
primaryColor: ColorsManager.primary,
primaryColorLight: ColorsManager.white,
primaryColorDark: ColorsManager.black,
disabledColor: ColorsManager.Grey,
splashColor: ColorsManager.white,//ripple effect

//cardview theme
cardTheme: CardTheme(color: ColorsManager.white,
shadowColor: ColorsManager.Grey,
elevation: AppSize.s4,

),

//app bar theme
appBarTheme: AppBarTheme(centerTitle: true,
color: ColorsManager.primary,
elevation: AppSize.s4,
shadowColor: ColorsManager.white,
titleTextStyle: getRegularStyle(fontSize: FontSize.s16,
color: ColorsManager.white)
),

//button theme
buttonTheme: ButtonThemeData(shape: StadiumBorder(),
disabledColor: ColorsManager.Grey,
buttonColor: ColorsManager.primary,
splashColor: ColorsManager.white,
 ),
//elevated button theme
elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
textStyle: getRegularStyle(color: ColorsManager.primary ,fontSize: FontSize.s18),
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12)),
),),
//text theme
textTheme: TextTheme(
      displayLarge: getItalicStyle(color: ColorsManager.white, fontSize: FontSize.s18),
      displayMedium:  getBoldStyle(color: ColorsManager.Grey, fontSize:FontSize.s16),
      titleSmall: getItalicStyle(color:ColorsManager.white , fontSize:FontSize.s14),
      labelLarge: getRegularStyle(color: ColorsManager.Grey),
      bodyMedium: getRegularStyle(color: ColorsManager.Grey),
),
//input decoration theme (text form field)
inputDecorationTheme: InputDecorationTheme(
  //content paddung 
  contentPadding:  const EdgeInsets.all(AppPadding.p8),
  //hintstyle
  hintStyle: getRegularStyle(color: ColorsManager.Grey ,fontSize: FontSize.s14),
  //label style
  labelStyle: getItalicStyle(color: ColorsManager.Grey , fontSize: FontSize.s14),
  //error style
  errorStyle: getRegularStyle(color: Colors.red),
  //enabled border 
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorsManager.primary , 
  width: AppSize.s1),
  borderRadius:  const BorderRadius.all(Radius.circular(AppSize.s8))),
  //focused border 
focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorsManager.Grey,
width: AppSize.s1),
borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
),
//error border
errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red,
width: AppSize.s1),
borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
//focused error border
focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorsManager.primary,
width: AppSize.s1),
borderRadius:  const BorderRadius.all(Radius.circular(AppSize.s8)),
)

)
);
}