import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_shop/controller/controller.dart';
import 'package:fruit_shop/controller/controller_basket.dart';
import 'package:fruit_shop/element/content.dart';
import 'package:get/get.dart';
import 'package:fruit_shop/element/tabbar_view.dart';

class HomePageOne extends GetView<Controller> {
  const HomePageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetBuilder<BasketController>(
                    init: BasketController(),
                    builder: (cart) => Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 0, right: 12, left: 6),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Image.asset('images/home1.png')),
                                  GestureDetector(
                                    child: Column(
                                      children: [
                                        Image.asset('images/home3.png'),
                                        GetBuilder<BasketController>(
                                            init: BasketController(),
                                            builder: (data) =>
                                                Text("${(data.cart)}")),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                Container(
                  margin: const EdgeInsets.only(left: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GetBuilder<Controller>(
                            init: Controller(),
                            builder: (data) => RichText(
                                text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: <TextSpan>[
                                  TextSpan(
                                      text: 'Hello ${data.first_name},',
                                      style: const TextStyle(
                                          fontFamily: 'Brandon_light',
                                          color: Color(0xff27214D),
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300)),
                                  const TextSpan(
                                      text: ' What fruit salad ',
                                      style: TextStyle(
                                        fontFamily: 'Brandon_light',
                                        color: Color(0xff27214D),
                                        fontSize: 22,
                                      )),
                                ])),
                          ),
                        ],
                      ),
                      const Text('combo do you want today?',
                          style: TextStyle(
                              fontFamily: 'Brandon_light',
                              color: Color(0xff27214D),
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      const Padding(padding: EdgeInsets.only(top: 20)),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixStyle: const TextStyle(fontSize: 30),
                                hintText: 'Search for fruit salad combos',
                                filled: true,
                                prefixIcon: const Icon(Icons.search),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0, color: Color(0xffF3F1F1)),
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                contentPadding: const EdgeInsets.all(20),
                                fillColor: const Color(0xffF3F4F9),
                              ),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10)),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('images/ke.png'),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10))
                        ],
                      ),
                      const Padding(padding: EdgeInsets.only(top: 30)),
                      const Text(
                        'Recommended Combo',
                        style: TextStyle(
                            fontFamily: 'Brandon_bld',
                            fontSize: 24,
                            color: Color(0xff27214D)),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Content(i: 1, rong: 152, cao: 182),
                    Content(i: 2, rong: 152, cao: 182),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 50)),
                const TabBar(
                  isScrollable: true,
                  indicatorColor: Color(0xffFFA451),
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Color(0xff938DB5),
                  unselectedLabelStyle: TextStyle(fontSize: 16),
                  indicator: UnderlineTabIndicator(
                    borderSide:
                        BorderSide(color: Color(0xffFFA451), width: 2.0),
                    insets: EdgeInsets.fromLTRB(18.0, 40.0, 40.0, 0.0),
                  ),
                  labelStyle:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  labelColor: Color(0xff27214D),
                  tabs: [
                    Tab(
                      text: 'Hottest',
                    ),
                    Tab(
                      text: 'Popular',
                    ),
                    Tab(
                      text: 'New combo',
                    ),
                    Tab(
                      text: 'Top',
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                SizedBox(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  child: const TabBarView(
                    children: [
                      TabBarViewItem(),
                      Center(
                        child: Text(
                          "Popular Food",
                          style: TextStyle(fontSize: 25, color: Colors.orange),
                        ),
                      ),
                      Center(
                        child: Text("New ComBo",
                            style:
                                TextStyle(fontSize: 25, color: Colors.orange)),
                      ),
                      Center(
                        child: Text("Top Food",
                            style:
                                TextStyle(fontSize: 25, color: Colors.orange)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
