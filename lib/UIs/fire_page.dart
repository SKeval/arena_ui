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
                      text("Name here", color: black, weight: FontWeight.bold),
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
                    color: black, weight: FontWeight.bold, size: 15),
                text("Play a new game everyday !", color: black, size: 10)
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
/*
 Future<dynamic> ShowBottomDialog(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(25),
            topStart: Radius.circular(25),
          ),
        ),
        builder: (context) {
          return Container(
              padding: const EdgeInsetsDirectional.only(
                start: 20,
                end: 20,
                bottom: 30,
                top: 8,
              ),
              child: Column(
                children: [
                 
                  sbh(ht * 0.06),
                  const Text(
                    'States Of Bharath & Its Capital City',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Product Sans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  sbh(ht * 0.02),
                  SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Country_Detail_Container(
                                  image: Assets.s1,
                                  title: 'North',
                                  info:
                                      'Chhattisgarh(Raipur)\nDelhi\nHaryana (Chandigarh)\nHimachal Pradesh (Shimla)\nJammu and Kashmir(Srinagar)\nPunjab(Chandigarh)\nRajasthan(Jaipur)\nUttarakhand(Dehradun)\nUttar Pradesh(Lucknow)',
                                ),
                              ),
                              Expanded(
                                child: Country_Detail_Container(
                                  image: Assets.s2,
                                  title: 'North East',
                                  info:
                                      'Arunachal Pradesh(Itanagar)\nAssam (Dispur)\nManipur (Imphal)\nMeghalaya (Shillong)\nMizoram (Aizawl) \nNagaland (Kohima)   \nSikkim (Gangtok)\nTripura (Agartala)',
                                ),
                              )
                            ],
                          ),
                          sbh(ht * 0.02),
                          Center(
                            child: Country_Detail_Container(
                              image: Assets.s3,
                              title: 'Central',
                              info:
                                  'Chhattisgarh(Raipur)\nMadhya Pradesh(Bhopal)',
                            ),
                          ),
                          sbh(ht * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Country_Detail_Container(
                                  image: Assets.s4,
                                  title: 'West',
                                  info:
                                      'Goa (Panaji)\nGujarat - (Gandhinagar)\nMaharashtra (Mumbai)',
                                ),
                              ),
                              Expanded(
                                child: Country_Detail_Container(
                                  image: Assets.s5,
                                  title: 'East',
                                  info:
                                      'Bihar ( Patna)\nJharkhand (Ranchi)\nOdisha - (Bhubaneswar)\nWest Bengal -( Kolkata)',
                                ),
                              )
                            ],
                          ),
                          sbh(ht * 0.05),
                          Center(
                            child: Country_Detail_Container(
                              image: Assets.s6,
                              title: 'South',
                              info:
                                  'Andhra Pradesh(Amaravati)\nKarnataka(Bangalore)\nKerala(Thiruvananthapuram)\nTamil Nadu (Chennai)\nTelangana(Hyderabad)\n',
                            ),
                          ),
                        ]),
                  ),
                ],
              ));
        });
  }
} */