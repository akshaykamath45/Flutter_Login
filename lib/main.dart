import 'package:flutter/material.dart';
import 'package:smokey_dough/views/screens/home.dart';
import 'package:smokey_dough/views/screens/menu.dart';
import 'package:smokey_dough/views/screens/menu_item.dart';
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
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primarySwatch: themeColor,
      ),
      // home: const HomeScreenView(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeScreenView(),
        '/menu_item': (context) => const MenuItemScreenView(),
        '/menu': (context) =>const MenuView(),
      },
    );
  }
}
