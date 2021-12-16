import 'package:fruit_shop/controller/controller.dart';
import 'package:fruit_shop/screen/add_to_basket.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content({Key? key, required this.i, required this.rong, required this.cao})
      : super(key: key);
  int i;
  double rong;
  double cao;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
        init: Controller(),
        builder: (data) => data.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 25, left: 20),
                          padding:
                              const EdgeInsets.only(top: 15, right: 20, left: 20),
                          height: 182,
                          width: 152,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                  "images/${(data.listData[i].imageUrl)}.png"),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              Text(
                                '${data.listData[i].title}',
                                style: const TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: 'Brandon_light',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                              ),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('images/n.png'),
                                      const Padding(
                                          padding: EdgeInsets.only(left: 5)),
                                      Text(
                                        '${data.listData[i].price}',
                                        style: const TextStyle(
                                            fontFamily: 'Brandon_light',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffF08626)),
                                      ),
                                    ],
                                  ),
                                  Image.asset('images/cong.png')
                                ],
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: 35,
                            left: 140,
                            child: Image.asset('images/love.png'))
                      ],
                    ),
                    onTap: () {
                      Get.to(AddToBasket(
                        index: i,
                      ));
                    },
                  ),
                ],
              ));
  }
}
