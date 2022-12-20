// Colors
import 'package:flutter/material.dart';

const Color black = Color(0xFF0f172a);
const Color white = Color(0xFFf9fafb);
const Color grey = Color(0xFF6b7280);
const Color greyLight = Color(0xFFd1d5db);
const Color primaryColor = Color(0xFF880E4F);
const Color transparent = Colors.transparent;
const Color notWhite = Color(0xFFEDF0F2);

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor themeColor = MaterialColor(0xFF880E4F, color);
