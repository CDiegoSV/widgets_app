import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.red,
  Colors.orange,
  Colors.purple,
  Colors.black,
];

class AppTheme {

  final int selectedColor;

  AppTheme({this.selectedColor = 0})
  : assert (selectedColor >= 0, 'Selected color must be greater than 0'),
    assert (selectedColor < colorList.length,
       'Selected color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );

}