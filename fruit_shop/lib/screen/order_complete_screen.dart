import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/track_order.dart';
import 'package:get/get.dart';

import 'home_screen.dart';


class OrderComplete extends StatelessWidget {
  const OrderComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2)),
              Image.asset('images/ordercomplete1.png'),
              const Padding(padding: EdgeInsets.only(top: 30)),
              const Text('Congratulations!!!',style: TextStyle(
                fontFamily:
                'Brandon_light',
                fontWeight: FontWeight.bold,
                color: Color(0xff27214D),
                fontSize: 32,
              )),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text('Your order have been taken and\nis being attended to',style: TextStyle(
                fontFamily:
                'Brandon_light',
                fontWeight: FontWeight.w400,
                color: Color(0xff27214D),
                fontSize: 20,
              ),textAlign: TextAlign.center,),
              const Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                width: 133,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 164, 81),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Get.to(const TrackOrder());
                    },
                    child: const Text('Track order',
                        style: TextStyle(
                            fontFamily: 'Brandon_light',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              ),
              const Padding(padding: EdgeInsets.only(top: 40)),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    minimumSize: const Size(115, 56),
                    side: const BorderSide(width: 1,color: Color(0xffFFA451))
                ),
                onPressed: (){
                  Get.to(const HomePageOne());
                },
                child: const Text('Continue shopping', style: TextStyle(
                  fontFamily:
                  'Brandon_bld',
                  color: Color(0xffFFA451),
                  fontSize: 16,
                )),)
            ],
          ),
        ),
      ),
    );
  }
}