import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_shop/controller/controller.dart';
import 'package:fruit_shop/controller/controller_basket.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

import 'order_list_screen.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFA451),
      body: SingleChildScrollView(
        child: GetBuilder<Controller>(
          init: Controller(),
          builder: (data) => data.isLoading
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 50),
                      height: MediaQuery.of(context).size.height*0.33,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Center(
                            child: Image.asset(
                                "images/${(data.listData[index].imageUrl)}.png"),
                          ),
                          Positioned(
                            left: 10,
                            top: -30,
                            child: GestureDetector(
                              child: Image.asset('images/addbasket.png'),
                              onTap: () {
                                Get.back();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.67,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(top: 30, right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(data.listData[index].title,
                                    style: const TextStyle(
                                        fontFamily: 'Brandon_light',
                                        fontSize: 32,
                                        color: Color(0xff27214D),
                                        fontWeight: FontWeight.bold)),
                                const Padding(padding: EdgeInsets.only(top: 20)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          child: Image.asset('images/tru.png'),
                                          onTap: () {
                                            data.Decrement();
                                          },
                                        ),
                                        const Padding(
                                            padding:
                                                EdgeInsets.only(right: 20)),
                                        Text('${data.quantity}'),
                                        const Padding(
                                            padding:
                                                EdgeInsets.only(right: 20)),
                                        InkWell(
                                          child:
                                              Image.asset('images/cong2.png'),
                                          onTap: () {
                                            data.Increment();
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset('images/nden.png'),
                                        const Padding(
                                            padding: EdgeInsets.only(right: 6)),
                                        Text('${data.listData[index].price}',
                                            style: const TextStyle(
                                                fontFamily: 'Brandon_light',
                                                fontSize: 24,
                                                color: Color(0xff27214D),
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffF3F3F3), width: 1)),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(top: 30, right: 20, left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('One Pack Contains:',
                                    style: TextStyle(
                                        fontFamily: 'Brandon_light',
                                        fontSize: 20,
                                        color: Color(0xff27214D),
                                        fontWeight: FontWeight.bold)),
                                const Padding(padding: EdgeInsets.only(top: 20)),
                                Text(
                                  data.listData[index].ingredient,
                                  style: const TextStyle(
                                      fontFamily: 'Brandon_light',
                                      fontSize: 16,
                                      color: Color(0xff27214D),
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffF3F3F3), width: 1)),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(top: 20, right: 20, left: 20),
                            child: Text(data.listData[index].description,
                                style: const TextStyle(
                                    fontFamily: 'Brandon_light',
                                    fontSize: 14,
                                    color: Color(0xff27214D),
                                    fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(top: 30, right: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('images/love2.png'),
                                GetBuilder<BasketController>(
                                    init: BasketController(),
                                    builder: (basket) => SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.58,
                                          height: 56,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  primary: const Color.fromARGB(
                                                      255, 255, 164, 81),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {
                                                basket.addItem(
                                                    int.parse(data
                                                        .listData[index].id),
                                                    data.listData[index].price,
                                                    index,
                                                    data.listData[index].title,
                                                    data.quantity,
                                                    data.listData[index]
                                                        .imageUrl,
                                                    data.listData[index].id,
                                                    data.listData[index].color);
                                                Get.to(OrderList());
                                                data.updateQuantity;
                                              },
                                              child: const Text('Add to basket',
                                                  style: TextStyle(
                                                      fontFamily:
                                                          'Brandon_light',
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600))),
                                        ))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
