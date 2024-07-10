import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  bool isDarks = false;

  void themeChange()
  {
    isDarks = !isDarks;
  }

  void changeThemeData()
  {
    ThemeData(
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: Colors.purple,
        secondary: Colors.blue,
        surface: Colors.pinkAccent,
      )
    );
  }
}