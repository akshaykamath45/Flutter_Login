import 'package:flutter/material.dart';
import 'package:smokey_dough/views/screens/home.dart';
import 'constants/strings.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: themeColor,
      ),
      home: const HomeScreenView(),
    );
  }
}
