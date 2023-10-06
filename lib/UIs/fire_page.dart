// ignore_for_file: camel_case_types

import 'package:arena_ui/Utils/Colors.dart';
import 'package:arena_ui/Widgets/text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Fire_Page extends StatefulWidget {
  const Fire_Page({super.key});

  @override
  State<Fire_Page> createState() => _Fire_PageState();
}

class _Fire_PageState extends State<Fire_Page> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Background,
      body: Column(
        children: [
          CarouselSlider(
              items: List<Widget>.generate(5, (index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Common_white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      text("Name here", color: Background),
                    ],
                  )),
                );
              }),
              options:
                  CarouselOptions(aspectRatio: 1.50, enlargeCenterPage: true)),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text("Most Played",
                    color: Common_white, weight: FontWeight.bold, size: 15),
                text("Play a new game everyday !",
                    color: Common_white, size: 10)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 8.0),
            child: AspectRatio(
              aspectRatio: 2.3,
              child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Common_white,
                        borderRadius: BorderRadius.circular(20)),
                  );
                },
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 3,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: width / 1.19,
                    decoration: BoxDecoration(
                        color: Common_white,
                        borderRadius: BorderRadius.circular(20)),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
