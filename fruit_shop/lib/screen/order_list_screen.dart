import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_shop/controller/controller_basket.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:fruit_shop/element/button_sheet.dart';
import 'package:get/get.dart';

import 'add_to_basket.dart';


class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          reverse: true,
          child: GetBuilder<BasketController>(
            init: BasketController(),
            builder: (basket) => Column(
              children: [
                Container(
                  color: const Color(0xffFFA451),
                  padding: const EdgeInsets.only(top: 30, left: 20),
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      const Center(
                        child: Text(
                          'My Basket',
                          style: TextStyle(
                              fontFamily: 'Brandon_light',
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Positioned(
                        left: -10,
                        top: -20,
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
                  height: MediaQuery.of(context).size.height * 0.72,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      padding: const EdgeInsets.only(top: 20),
                      shrinkWrap: true,
                      itemCount: basket.itemCount,
                      itemBuilder: (context, index) => Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (context) {
                                    Get.to(AddToBasket(
                                        index: basket.items.values
                                            .toList()[index]
                                            .index));
                                  },
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white,
                                  icon: Icons.info,
                                  label: 'Info',
                                ),
                                SlidableAction(
                                  onPressed: (context) {
                                    basket.removeitem(int.parse(basket
                                        .items.values
                                        .toList()[index]
                                        .id));
                                  },
                                  backgroundColor: const Color(0xFFFE4A49),
                                  foregroundColor: Colors.white,
                                  icon: Icons.delete,
                                  label: 'Delete',
                                ),
                              ],
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 20, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 65,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color: Color(int.parse(basket
                                              .items.values
                                              .toList()[index]
                                              .color)),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                "images/${(basket.items.values.toList()[index].imageUrl)}.png")
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                          padding: EdgeInsets.only(right: 10)),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              "${basket.items.values.toList()[index].title}",
                                              style: const TextStyle(
                                                fontFamily: 'Brandon_bld',
                                                fontSize: 16,
                                                color: Color(0xff27214D),
                                              )),
                                          Text(
                                              "${basket.items.values.toList()[index].quantity}pack",
                                              style: const TextStyle(
                                                fontFamily: 'Brandon_light',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                color: Color(0xff27214D),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset('images/nden.png'),
                                      Text(
                                          "${basket.items.values.toList()[index].price}"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Total',
                                style: TextStyle(
                                  fontFamily: 'Brandon_bld',
                                  fontSize: 18,
                                  color: Color(0xff27214D),
                                )),
                            Row(
                              children: [
                                Image.asset('images/nden.png'),
                                const Padding(padding: EdgeInsets.only(right: 10)),
                                Text('${basket.totalItem}',
                                    style: const TextStyle(
                                      fontFamily: 'Brandon_bld',
                                      fontSize: 24,
                                      color: Color(0xff27214D),
                                    )),
                              ],
                            )
                          ],
                        ),
                        const Padding(padding: EdgeInsets.only(right: 50)),
                        SizedBox(
                            height: 56,
                            width: MediaQuery.of(context).size.width * 0.53,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: const Color.fromARGB(255, 255, 164, 81),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                if (basket.itemCount == 0) {
                                  Get.snackbar(
                                      "Thông báo", "Bạn chưa thêm sản phẩm");
                                } else {
                                  onpressbutton();
                                  //onpressbuttom2();
                                }
                              },
                              child: const Text("Check Out"),
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
