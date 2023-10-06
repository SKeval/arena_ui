// ignore_for_file: camel_case_types, sized_box_for_whitespace

import 'package:arena_ui/Utils/Colors.dart';
import 'package:arena_ui/Utils/images.dart';
import 'package:arena_ui/Widgets/button.dart';
import 'package:arena_ui/Widgets/text.dart';
import 'package:flutter/material.dart';

class XRames_Page extends StatefulWidget {
  const XRames_Page({super.key});

  @override
  State<XRames_Page> createState() => _XRames_PageState();
}

class _XRames_PageState extends State<XRames_Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          button(
                            image: Image.asset(close),
                            bgcolor: grey,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          text('XRames',
                              size: 25,
                              weight: FontWeight.bold,
                              color: Common_white),
                          button(image: Image.asset(search), bgcolor: grey),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: Container(
                        width: width / 8,
                        decoration: BoxDecoration(
                            color: grey,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            button(image: Image.asset(dfire)),
                            button(image: Image.asset(msg)),
                            button(image: Image.asset(goal)),
                            button(image: Image.asset(chess)),
                            button(image: Image.asset(machine)),
                            button(image: Image.asset(song)),
                            button(image: Image.asset(puzzle)),
                            button(image: Image.asset(war)),
                            button(image: Image.asset(card)),
                            button(image: Image.asset(tier)),
                            button(image: Image.asset(map)),
                            button(image: Image.asset(book)),
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
                          itemCount: 10,
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
                                      color: Background, size: 15),
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
/*
Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          button(
                            image: Image.asset(close),
                            bgcolor: grey,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          text('XRames',
                              size: 25,
                              weight: FontWeight.bold,
                              color: Common_white),
                          button(image: Image.asset(search), bgcolor: grey),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: width / 8,
                            height: height / 1.5,
                            decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                button(image: Image.asset(dfire)),
                                button(image: Image.asset(msg)),
                                button(image: Image.asset(goal)),
                                button(image: Image.asset(chess)),
                                button(image: Image.asset(machine)),
                                button(image: Image.asset(song)),
                                button(image: Image.asset(puzzle)),
                                button(image: Image.asset(war)),
                                button(image: Image.asset(card)),
                                button(image: Image.asset(tier)),
                                button(image: Image.asset(map)),
                                button(image: Image.asset(book)),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            //height: height / 1.2,
                            width: width / 1.25,
                            child: GridView.builder(
                              itemCount: 10,
                              gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
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
                                          color: Background, size: 15),
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )























Container(
                            width: width / 8,
                            height: height / 1.5,
                            decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: ListView.builder(
                              itemCount: buttons.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8, left: 8.0),
                                  child: button(image: buttons[index]),
                                );
                              },
                            )), */