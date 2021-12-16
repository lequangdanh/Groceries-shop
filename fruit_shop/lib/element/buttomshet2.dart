
import 'package:flutter/material.dart';
import 'package:fruit_shop/screen/order_complete_screen.dart';
import 'package:get/get.dart';

void onPressButtom2() {
  TextEditingController _controllerCardHoder = TextEditingController();
  TextEditingController _controllerCardNumber = TextEditingController();
  TextEditingController _controllerDate = TextEditingController();
  TextEditingController _controllerCCV = TextEditingController();
  Get.bottomSheet(
    
    SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            
            height: Get.height*0.756,
            
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SingleChildScrollView(
                    reverse: true,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 40)),
                            const Text('Card Holders Name',
                                style: TextStyle(
                                    fontFamily: 'Brandon_light',
                                    color: Color(0xff27214D),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                            const Padding(padding: EdgeInsets.only(top: 20)),
                            TextField(
                              controller: _controllerCardHoder,
                              maxLines: 1,
                              decoration: InputDecoration(
                                hintText: '1234 5678 9012 1314',
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
                              controller: _controllerCardNumber,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Date',
                                    style: TextStyle(
                                        fontFamily: 'Brandon_light',
                                        color: Color(0xff27214D),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                                Text('CCV',
                                    style: TextStyle(
                                        fontFamily: 'Brandon_light',
                                        color: Color(0xff27214D),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                    controller:_controllerDate,
                                    keyboardType: TextInputType.number,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hintText: '10/30',
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
                                ),
                                SizedBox(
                                  width: 134,
                                  child: TextField(
                                    controller: _controllerCCV,
                                    keyboardType: TextInputType.number,
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hintText: '123',
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
                                )
                              ],
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 20)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 96,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 96,
                      child: Center(
                        child: SizedBox(
                          width: 150,
                          height: 56,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                if (_controllerCardHoder.text.isEmpty ||
                                    _controllerCardNumber.text.isEmpty ||
                                    _controllerDate.text.isEmpty ||
                                    _controllerCCV.text.isEmpty) {
                                  Get.defaultDialog(
                                      title: 'Thông báo',
                                      content: Column(
                                        children: const [
                                          Text('Bạn phải điền đầy đủ thông tin')
                                        ],
                                      ));
                                } else {
                                  _controllerCardHoder.clear();
                                  _controllerCardNumber.clear();
                                  _controllerDate.clear();
                                  _controllerCCV.clear();

                                  Get.back();
                                  Get.back();
                                  Get.to(const OrderComplete());
                                }
                              },
                              child: const Text('Complete Order',
                                  style: TextStyle(
                                      fontFamily: 'Brandon_light',
                                      color: Color(0xffFFA451),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600))),
                        ),
                      ),
                      decoration: const BoxDecoration(
                          color: Color(0xffFFA451),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(top: -60,
            left: Get.width*0.4,
            child: Image.asset("images/cancel.png"),)
        ],
      ),
    ),
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
    isScrollControlled: true,
  );
}
