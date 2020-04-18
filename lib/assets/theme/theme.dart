import 'package:flutter/material.dart';

const mainColor = Color(0xFF);

final ThemeData myThemeData = buildMyThemeData();

ThemeData buildMyThemeData() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    accentColor: null,
  );
}
