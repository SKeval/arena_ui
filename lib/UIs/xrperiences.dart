// ignore_for_file: camel_case_types

import 'package:arena_ui/Utils/Colors.dart';
import 'package:arena_ui/Utils/images.dart';
import 'package:arena_ui/Widgets/button.dart';
import 'package:arena_ui/Widgets/text.dart';
import 'package:flutter/material.dart';

class XRperiences_Page extends StatefulWidget {
  const XRperiences_Page({super.key});

  @override
  State<XRperiences_Page> createState() => _XRperiences_PageState();
}

class _XRperiences_PageState extends State<XRperiences_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: width,
              height: height / 1.038,
              decoration: BoxDecoration(
                color: Background,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          button(
                            image: Image.asset(
                              close,
                              color: Background,
                            ),
                            bgcolor: Color(0xaaEBEBEB),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          Container(
                            width: width / 1.6,
                            height: width / 9,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xaaEBEBEB),
                            ),
                            child: Center(
                              child: text('XRperiences',
                                  size: 25,
                                  weight: FontWeight.bold,
                                  color: black),
                            ),
                          ),
                          button(
                              image: Image.asset(search),
                              bgcolor: Color(0xaaEBEBEB)),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: Container(
                        width: width / 8,
                        decoration: BoxDecoration(
                            color: Color(0xaaEBEBEB),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            button(image: Image.asset(firelight)),
                            button(image: Image.asset(message)),
                            button(image: Image.asset(rangoli)),
                            button(image: Image.asset(baloon)),
                            button(image: Image.asset(temple)),
                            button(image: Image.asset(beach)),
                            button(image: Image.asset(cart)),
                            button(image: Image.asset(food)),
                            button(image: Image.asset(fair)),
                            button(image: Image.asset(star)),
                            button(image: Image.asset(hand)),
                            button(image: Image.asset(yoga)),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      right: 0,
                      child: SizedBox(
                        height: height,
                        width: width / 1.25,
                        child: GridView.builder(
                          itemCount: 20,
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 3 / 4,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: box_color,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  text("Rangoli Painting",
                                      color: black, size: 15),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
