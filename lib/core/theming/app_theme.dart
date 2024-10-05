/* import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_app/core/helpers/app_strings.dart';
import 'package:rest_app/core/theming/app_colors.dart';

class ThemeManger {
  static ThemeData appTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.black),
      ),
      fontFamily: AppStrings.englishFont,
      inputDecorationTheme: InputDecorationTheme(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: buildBorder(),
        hintStyle: const TextStyle(color: Colors.grey), // Add hint color
        labelStyle: const TextStyle(color: Colors.black), // Add label color
        floatingLabelStyle:
            const TextStyle(color: Colors.black), // Add floating label color
        errorStyle: const TextStyle(color: Colors.red), // Add error text color
        contentPadding:
            EdgeInsets.symmetric(horizontal: 16.w), // Adjust padding if needed
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 5.0,
        selectedLabelStyle: TextStyle(
          fontFamily: AppStrings.arabicFont,
          overflow: TextOverflow.ellipsis,
          color: AppColors.mainOrange,
          fontSize: 11,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: AppStrings.arabicFont,
          overflow: TextOverflow.ellipsis,
          color: AppColors.gray,
          fontSize: 11,
        ),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.mainOrange,
        unselectedItemColor: AppColors.lightGray,
      ),
      primaryColor: AppColors.mainOrange,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.mainOrange,
        primary: AppColors.mainOrange,
        brightness: Brightness.light,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        primaryContainer: AppColors.lightGray,
        error: Colors.black,
        onError: Colors.white,
        surface: Colors.pink,
        onSurface: Colors.white,
      ),
    );
  }

  static ThemeData blackTheme() {
    return ThemeData(
      useMaterial3: false,
      scaffoldBackgroundColor: AppColors.mainOrange,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
          elevation: 0,
          //    backgroundColor: AppColors.primaryDark,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white)),
      fontFamily: AppStrings.englishFont,
      inputDecorationTheme: InputDecorationTheme(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        disabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: buildBorder(),
      ),
      primaryColor: AppColors.mainOrange,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          elevation: 5.0,
          backgroundColor: Color(0xff1f1a2a),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.mainOrange,
          unselectedItemColor: AppColors.lightGray),
      /*      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: AppColors.mainOrange,
        primary: AppColors.mainOrange,
        brightness: Brightness.light,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        primaryContainer: AppColors.lightGray,
        error: Colors.black,
        onError: Colors.white,
        surface: Colors.pink,
        onSurface: Colors.white,
      ),
   */
    );
  }
}

OutlineInputBorder buildBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  );
}

OutlineInputBorder buildMainBuild() {
  return const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xffF0F0F0), width: 2),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
}

OutlineInputBorder buildErrorBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red),
    borderRadius: BorderRadius.all(Radius.circular(20.sp)),
  );
}

TextStyle mainTFFTextStyle(context, {Color? color}) =>
    Theme.of(context).textTheme.bodyMedium!.copyWith(
          fontFamily: AppStrings.arabicFont,
          overflow: TextOverflow.ellipsis,
          //color: color ?? AppColors.black,
          fontSize: 10,
        );

/* TextStyle hintTFFTextStyle({Color? color}) => TextStyle(
      color: color ?? AppColors.lightGray,
      fontSize: 12,
    ); */

/* TextStyle labelTFFTextStyle(bool isFloating) => TextStyle(
      color: isFloating ? AppColors.mainOrange : AppColors.gray,
      fontWeight: isFloating ? FontWeight.bold : FontWeight.w400,
      fontSize: isFloating ? 14 : 12,
    );
 */
TextStyle appTextStyle(
    {required BuildContext context,
    double textHeight = 1.2,
    TextDecoration? textDecoration,
    Color? color,
    FontWeight? fontWeight,
    double? textSize}) {
  return Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontFamily: AppStrings.arabicFont,
        overflow: TextOverflow.ellipsis,
        height: textHeight,
        decoration: textDecoration,
/*         color: color ?? Theme.of(context).textTheme.bodyMedium!.color,
 */
        fontSize: textSize ?? 12,
        fontWeight: fontWeight ?? FontWeight.w400,
      );
}
 */