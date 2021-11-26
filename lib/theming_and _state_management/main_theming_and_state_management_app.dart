import 'package:clean_architecture/theming_and%20_state_management/presentation/login/login_screen.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/splash_screen/splash_screen.dart';
import 'package:clean_architecture/theming_and%20_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainThemingAndStateManagementApp extends StatelessWidget {
  const MainThemingAndStateManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _borderLight = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
          color: DeliveryColors.lightGrey, width: 2, style: BorderStyle.solid),
    );

    final _borderDark = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(
          color: DeliveryColors.grey, width: 2, style: BorderStyle.solid),
    );

    final lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.white,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            headline6: TextStyle(
                fontSize: 20,
                color: DeliveryColors.purple,
                fontWeight: FontWeight.bold)),
      ),
      canvasColor: DeliveryColors.white,
      accentColor: DeliveryColors.purple,
      bottomAppBarColor: DeliveryColors.veryLightGrey,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.purple,
        displayColor: DeliveryColors.purple,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderLight,
        enabledBorder: _borderLight,
        focusedBorder: _borderLight,
        labelStyle: TextStyle(color: DeliveryColors.purple),
        hintStyle: GoogleFonts.poppins(
          color: DeliveryColors.lightGrey,
          fontSize: 10,
        ),
      ),
      iconTheme: IconThemeData(
        color: DeliveryColors.purple,
      ),
      // primaryIconTheme: IconThemeData(
      //   color: DeliveryColors.purple,
      // ),
      // accentIconTheme: IconThemeData(
      //   color: DeliveryColors.purple,
      // ),
    );

    final darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        color: DeliveryColors.purple,
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
            headline6: TextStyle(
                fontSize: 20,
                color: DeliveryColors.white,
                fontWeight: FontWeight.bold)),
      ),
      canvasColor: DeliveryColors.grey,
      accentColor: DeliveryColors.white,
      bottomAppBarColor: Colors.transparent,
      scaffoldBackgroundColor: DeliveryColors.dark,
      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: DeliveryColors.green,
        displayColor: DeliveryColors.green,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: _borderDark,
        enabledBorder: _borderDark,
        focusedBorder: _borderDark,
        fillColor: DeliveryColors.grey,
        filled: true,
        labelStyle: TextStyle(color: DeliveryColors.white),
        hintStyle: GoogleFonts.poppins(
          color: DeliveryColors.white,
          fontSize: 10,
        ),
      ),
      iconTheme: IconThemeData(
        color: DeliveryColors.white,
      ),
      // primaryIconTheme: IconThemeData(
      //   color: DeliveryColors.purple,
      // ),
      // accentIconTheme: IconThemeData(
      //   color: DeliveryColors.purple,
      // ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: SplashScreen(),
    );
  }
}
