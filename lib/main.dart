// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/layout/new_layout.dart';
import 'package:newsapp/shared/network/dio_helper.dart';

void main() {
  dio_helper.Init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarColor: Colors.white,
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,

          ),

       iconTheme: IconThemeData(color:Colors.black, ),
        ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type:BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
      ),
      ),
      
      home: NewsLayout(),
    );
  }
}


 