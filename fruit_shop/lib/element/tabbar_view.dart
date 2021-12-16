import 'package:flutter/material.dart';
import 'package:fruit_shop/controller/controller.dart';
import 'package:fruit_shop/screen/add_to_basket.dart';
import 'package:get/get.dart';

class TabBarViewItem extends StatelessWidget {
  const TabBarViewItem({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GetBuilder<Controller>(
          init: Controller(),
          builder: (data) => data.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: (data.listData).length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => AddToBasket(
                              index: index,
                            ));
                      },
                      child: Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 15),
                            padding:
                                const EdgeInsets.only(top: 10, right: 20, left: 20),
                            height: 150,
                            width: 140,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(16),
                                color: Color(
                                    int.parse(data.listData[index].color))),
                            child: Column(
                              children: [
                                Image.asset(
                                    "images/${data.listData[index].imageUrl}.png"),
                                const Padding(padding: EdgeInsets.only(top: 5)),
                                Text(
                                  '${data.listData[index].title}',
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
                                          '${data.listData[index].price}',
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
                              top: 8,
                              left: 130,
                              child: Image.asset('images/love.png'))
                        ],
                      ),
                    );
                  }),
        ),
      ],
    );
  }
}
