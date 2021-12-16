import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/splash_screen.dart';


import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    initialRoute: '/',
    routes: {
      '/': (context)=> Splash(),

    }
  ));
}


