import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor:Colors.indigo,
        appBarTheme: const AppBarTheme(color:primary, elevation:0),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary:primary),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor:primary,
        ),
        //elevatedButton
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary:primary,
            shape: const StadiumBorder(),
            elevation: 0
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle:  TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft: Radius.circular(10)),
          ),
          focusedErrorBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topLeft: Radius.circular(10)),
          ),
        )
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor:Colors.indigo,
        appBarTheme: const AppBarTheme(color:primary, elevation:0),
  );

}