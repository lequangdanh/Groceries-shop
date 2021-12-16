import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/welcome_screen.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatortohome();
  }
  _navigatortohome() async{
    await Future.delayed(const Duration(seconds: 3),(){
      Get.off(const WelcomeScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/splash.png'),
      ),
    );
  }
}