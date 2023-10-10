// ignore_for_file: camel_case_types

import 'package:arena_ui/UIs/fire_page.dart';
import 'package:arena_ui/UIs/remote_page.dart';
import 'package:arena_ui/UIs/vr_page.dart';
import 'package:arena_ui/Utils/Colors.dart';
import 'package:arena_ui/Utils/images.dart';
import 'package:arena_ui/Widgets/text.dart';
import 'package:flutter/material.dart';

class Arena_Screen extends StatefulWidget {
  const Arena_Screen({super.key});

  @override
  State<Arena_Screen> createState() => _Arena_ScreenState();
}

class _Arena_ScreenState extends State<Arena_Screen> {
  PageController _pageController = PageController();
  int count = 0;
  int currentindex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: currentindex);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: height / 18,
                      decoration: BoxDecoration(
                          color: Common_white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        coin, scale: 0.7,
                        //fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: width / 2,
                      height: height / 18,
                      decoration: BoxDecoration(
                          color: Common_white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: text("Arena",
                              color: black, weight: FontWeight.bold, size: 20)),
                    ),
                    Container(
                      height: height / 18,
                      decoration: BoxDecoration(
                          color: Common_white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(search),
                      ),
                    ),
                    Container(
                      height: height / 18,
                      decoration: BoxDecoration(
                          color: Common_white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(notification),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    bottom: 15, right: 15, left: 15, top: 10),
                height: height / 14,
                width: width / 2,
                decoration: BoxDecoration(
                    color: Common_white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            currentindex = 0;
                          });
                          _pageController.animateToPage(currentindex,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(fire),
                            SizedBox(
                              height: 10,
                              width: 10,
                              child: CircleAvatar(
                                backgroundColor: currentindex == 0
                                    ? Colors.blue
                                    : Colors.transparent,
                              ),
                            )
                          ],
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            currentindex = 1;
                          });
                          _pageController.animateToPage(currentindex,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(remote),
                            SizedBox(
                              height: 10,
                              width: 10,
                              child: CircleAvatar(
                                backgroundColor: currentindex == 1
                                    ? Colors.blue
                                    : Colors.transparent,
                              ),
                            )
                          ],
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            currentindex = 2;
                          });
                          _pageController.animateToPage(currentindex,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(vr),
                            SizedBox(
                              height: 10,
                              width: 10,
                              child: CircleAvatar(
                                backgroundColor: currentindex == 2
                                    ? Colors.blue
                                    : Colors.transparent,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentindex = value;
                    });
                  },
                  children: const [
                    Fire_Page(),
                    Remote_Page(),
                    Vr_Page(),
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

/*
Widget carouselView(index) {
  return carouselCard();
}

Widget carouselCard() {
  return Container(
    decoration: BoxDecoration(
        color: Common_white, borderRadius: BorderRadius.circular(30)),
    child: Center(child: text("Name here", color: Background)),
  );
}
*/


/*AspectRatio(
                aspectRatio: 1.50,
                child: PageView.builder(
                  itemCount: 5,
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return carouselView(index);
                  },
                ),
              ) */
