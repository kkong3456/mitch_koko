import 'package:flutter/material.dart';
import 'package:mitch_koko/pages/first_page.dart';
import 'package:mitch_koko/pages/home_page.dart';
import 'package:mitch_koko/pages/second_page.dart';
import 'package:mitch_koko/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = ['Mitch', 'Sharon', 'Beny'];

    void userTapped() {
      print('User tapped!');
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes:{
        '/firstpage':(context)=>FirstPage(),
        '/homepage':(context)=>HomePage(),
        '/settingspage':(context)=>SettingsPage(),
      }
    );
  }
}
