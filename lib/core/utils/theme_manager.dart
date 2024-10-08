import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'style_manager.dart';
import 'values_manager.dart';



ThemeData getApplicationTheme(){
  return ThemeData(
    ///main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.primaryOpacity, //ripple effect
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey),

    /// card view theme
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.white,
        elevation: AppSize.s4
    ),
    ///Appbar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity,
      titleTextStyle: getRegularStyle(color:ColorManager.white,fontSize:FontSize.s16),
    ),

    ///Button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12),
          ),
        )
    ),
    ///Text theme
    textTheme: TextTheme(
        displayLarge:getSemiBoldStyle(color: ColorManager.darkGrey,fontSize: FontSize.s16),
        titleMedium: getRegularStyle(color: ColorManager.darkGrey,fontSize: FontSize.s14),
        bodySmall: getLightStyle(color: ColorManager.grey1),
        bodyLarge: getRegularStyle(color: ColorManager.primary,fontSize: FontSize.s16)
    ),

    ///input decoration theme(text form field)
    inputDecorationTheme: InputDecorationTheme(
      //content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      //hint style
      hintStyle: getRegularStyle(color: ColorManager.grey1),
      //label style
      labelStyle: getMediumStyle(color: ColorManager.darkGrey),
      //error style
      errorStyle: getRegularStyle(color: ColorManager.error),

      //enabled
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //focused
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //error
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
      //focused error
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
      ),
    ),



  );
}