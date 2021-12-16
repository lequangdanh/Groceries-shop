import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/authentication_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color:  const Color(0xFFFFA451),
            child: Stack(
              children: [
                Padding(
                  child: Image.asset(
                    'images/welcom1.png',
                    height: 300,
                  ),
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 5, top: 90),
                ),
                Positioned(
                    right: 45,
                    top: 100,
                    child: Image.asset('images/welcome2.png')),
                Positioned(
                  left: 70,
                  bottom: 30,
                  child: Image.asset('images/welcome3.png'),
                  width: 240,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 20, right: 20),
            child: Text(
              "Get The Freshest Fruit Salad Combo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10, right: 20,bottom: 40),
            child: Text(
              "We deliver the best and freshest fruit salad in town. Oder for a Combo today!!!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
              width: 330,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 164, 81)),
                child: const Text(
                  "Let's Continue",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Get.to(Authentication());
                },
              )),
        ],
      ),
    );
  }
}
