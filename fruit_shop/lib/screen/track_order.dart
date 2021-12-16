import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackOrder extends StatelessWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            color: const Color(0xffFFA451),
            padding: const EdgeInsets.only(top: 0,left: 0),
            height: 94,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                const Center(child: Text('Delivery Status',style: TextStyle(
                    fontFamily: 'Brandon_light',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),),),
                Positioned(left: -10,top: 0,
                  child: GestureDetector(
                    child:
                        Image.asset('images/addbasket.png'),
                    onTap: (){
                      Get.back();
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 0,right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xffFFFAEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/track1.png',width: 48,height: 48,)
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 20)),
                        const Text("Order Taken",
                            style: TextStyle(
                              fontFamily: 'Brandon_bld',
                              fontSize: 16,
                              color: Color(0xff27214D),)),
                      ],
                    ),
                    Image.asset('images/checked.png'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 32),
                  child: Image.asset('images/linen.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xffF1EFF6),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/track2.png',width: 48,height: 48,)
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 20)),
                        const Text("Order Is Being Prepared",
                            style: TextStyle(
                              fontFamily: 'Brandon_bld',
                              fontSize: 16,
                              color: Color(0xff27214D),)),
                      ],
                    ),
                    Image.asset('images/checked.png'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 32),
                  child: Image.asset('images/linen.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xffFEF0F0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/track3.png',width: 48,height: 48,)
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 20)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Order Is Being Delivered",
                                style: TextStyle(
                                  fontFamily: 'Brandon_bld',
                                  fontSize: 16,
                                  color: Color(0xff27214D),)),
                            Text("Your delivery agent is coming",
                                style: TextStyle(
                                  fontFamily: 'Brandon_light',
                                  fontSize: 14,
                                  color: Color(0xff27214D),)),
                          ],
                        )
                      ],
                    ),
                    Image.asset('images/checked.png'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 32),
                  child: Image.asset('images/linen.png'),
                ),
                Image.asset('images/map.png'),
                Container(
                  margin: const EdgeInsets.only(left: 32),
                  child: Image.asset('images/linen.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            color: const Color(0xffF0FEF8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/checkedbig.png',width: 48,height: 48,)
                            ],
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(right: 20)),
                        const Text("Order Received",
                            style: TextStyle(
                              fontFamily: 'Brandon_bld',
                              fontSize: 16,
                              color: Color(0xff27214D),)),
                      ],
                    ),
                   // Image.asset('assets/images/....png'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}