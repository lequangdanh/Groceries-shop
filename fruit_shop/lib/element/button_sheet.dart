import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/order_complete_screen.dart';
import 'package:get/get.dart';
import 'package:fruit_shop/controller/controller_basket.dart';

import 'buttomshet2.dart';

void onpressbutton() {
  TextEditingController _controllerDeliveryAddress = TextEditingController();
  TextEditingController _controllerNumberCall = TextEditingController();
  Get.bottomSheet(
      SingleChildScrollView(

        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 40)),
                        const Text('Delivery address',
                            style: TextStyle(
                                fontFamily: 'Brandon_light',
                                color: Color(0xff27214D),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        TextField(
                          controller: _controllerDeliveryAddress,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: '10th avenue, Lekki, Lagos State',
                            labelStyle: const TextStyle(
                              fontFamily: 'Brandon_light',
                              color: Color(0xff27214D),
                              fontSize: 20,
                            ),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Color(0xffF3F1F1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: const EdgeInsets.all(20),
                            fillColor: const Color(0xffF3F1F1),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        const Text('Number we can call',
                            style: TextStyle(
                                fontFamily: 'Brandon_light',
                                color: Color(0xff27214D),
                                fontSize: 20,
                                fontWeight: FontWeight.w600)),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        TextField(
                          controller: _controllerNumberCall,
                          keyboardType: TextInputType.number,
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: '09090605708',
                            labelStyle: const TextStyle(
                              fontFamily: 'Brandon_light',
                              color: Color(0xff27214D),
                              fontSize: 20,
                            ),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 0, color: Color(0xffF3F1F1)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: const EdgeInsets.all(20),
                            fillColor: const Color(0xffF3F1F1),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size(135, 56),
                                  side: const BorderSide(
                                      width: 1, color: Color(0xffFFA451))),
                              onPressed: () {
                                if (_controllerDeliveryAddress.text.isEmpty ||
                                    _controllerNumberCall.text.isEmpty) {
                                  Get.defaultDialog(
                                      title: 'Thông báo',
                                      content: Column(
                                        children: const [
                                          Text('Bạn phải điền đầy đủ thông tin')
                                        ],
                                      ));
                                } else {
                                  _controllerDeliveryAddress.clear();
                                  _controllerNumberCall.clear();
                                  //BasketController.clear();
                                  Get.back();
                                  Get.to(const OrderComplete());
                                }
                              },
                              child: const Text('Pay on delivery',
                                  style: TextStyle(
                                    fontFamily: 'Brandon_bld',
                                    color: Color(0xffFFA451),
                                    fontSize: 16,
                                  )),
                            ),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  minimumSize: const Size(135, 56),
                                  side: const BorderSide(
                                      width: 1, color: Color(0xffFFA451))),
                              onPressed: () {
                                if (_controllerDeliveryAddress.text.isEmpty ||
                                    _controllerNumberCall.text.isEmpty) {
                                  Get.defaultDialog(
                                      title: 'Thông báo',
                                      content: Column(
                                        children: const [Text('Bạn chưa điền thông tin')],
                                      ));
                                } else {
                                  _controllerDeliveryAddress.clear();
                                  _controllerNumberCall.clear();

                                  Get.back();

                                  onPressButtom2();
                                }
                              },
                              child: const Text('Pay With Card',
                                  style: TextStyle(
                                    fontFamily: 'Brandon_bld',
                                    color: Color(0xffFFA451),
                                    fontSize: 16,
                                  )),
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(bottom: 20)),
                      ],
                    ),
                  ],
                )),
            Positioned(

              top: -60,
              left: Get.width*0.4,
              child:  Image.asset("images/cancel.png"),),
          ],
        ),
      ),
      elevation: 20.0,
      enableDrag: false,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      )));
}
