import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/country.dart';
import 'package:travel_app/data/hotels.dart';
import 'package:travel_app/screen/detail_hotel.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(60)),
                child: Image.asset(
                  'assets/images/oval_home.png',
                  fit: BoxFit.cover,
                  width: size.width,
                  height: 200.h,
                ),
              ),
              Positioned(
                  left: 25,
                  top: 60,
                  child: Container(
                    width: 32.w,
                    height: 32.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                        iconSize: 20,
                      ),
                    ),
                  )),
              Positioned(
                top: 60.h,
                left: 140.w,
                child: SizedBox(
                  width: 270.w,
                  height: 65.h,
                  child: const Text(
                    "Hotels",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  right: 25,
                  top: 60,
                  child: Container(
                    width: 32.w,
                    height: 32.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white),
                    child: Align(
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: const Icon(Icons.menu),
                        color: Colors.black,
                        onPressed: () => Navigator.pop(context),
                        iconSize: 20,
                      ),
                    ),
                  )),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: EdgeInsets.only(left: 10.w, right: 10.w),
                        sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                          childCount: 1,
                          (context, index) {
                            return Column(
                              children: list_hotel.map((item) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: Card(
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                    child: SizedBox(
                                      width: 325.w,
                                      height: 310.h,
                                      child: Column(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Stack(children: [
                                              SizedBox(
                                                width: 305.w,
                                                height: 115.h,
                                                child: InkWell(
                                                  onTap: () => Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              detailHotel(
                                                                hotel: item,
                                                              ))),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    16),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    16)),
                                                    child: Hero(
                                                      tag: item.img,
                                                      child: Image.asset(
                                                        item.img,
                                                        fit: BoxFit.cover,
                                                        width: 305.w,
                                                        height: 115.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  right: 10,
                                                  top: 10,
                                                  child: Icon(
                                                    Icons.favorite,
                                                    color: item.favourite
                                                        ? const Color.fromARGB(
                                                            255, 247, 119, 119)
                                                        : Colors.white,
                                                  ))
                                            ]),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w, top: 10.h),
                                            child: Column(children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  item.name,
                                                  style: const TextStyle(
                                                      fontFamily: 'Rubik',
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/position.png'),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      '${item.address} - ',
                                                      style: const TextStyle(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5.h),
                                                      child: Text(
                                                        '${item.distance} km from destination',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: const TextStyle(
                                                            fontFamily: 'Rubik',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.grey),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Row(children: [
                                                  Image.asset(
                                                      'assets/images/star.png'),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Text.rich(TextSpan(
                                                      text: item.rate,
                                                      style: const TextStyle(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                      children: [
                                                        TextSpan(
                                                            text:
                                                                ' (${item.reviews} reviews)',
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                    'Rubik',
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .grey))
                                                      ]))
                                                ]),
                                              ),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Image.asset(
                                                    'assets/images/Line 15.png',
                                                    width: 285.w,
                                                    fit: BoxFit.cover,
                                                  )),
                                              SizedBox(
                                                height: 20.h,
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 20.w),
                                                  child: Row(children: [
                                                    Expanded(
                                                        child: Column(
                                                      children: [
                                                        Text(
                                                          '${item.price}.000 VND',
                                                          style: const TextStyle(
                                                              fontFamily:
                                                                  'Rubik',
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                        SizedBox(
                                                          height: 20.h,
                                                        ),
                                                        const Text(
                                                          '/night',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Rubik',
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        )
                                                      ],
                                                    )),
                                                    Expanded(
                                                        child: Container(
                                                      width: 150.w,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                          color: const Color
                                                              .fromARGB(255,
                                                              143, 103, 232),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      32)),
                                                      child: const Center(
                                                          child: Text(
                                                        "Book a Room",
                                                        style: TextStyle(
                                                            fontFamily: "Rubik",
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ))
                                                  ]),
                                                ),
                                              )
                                            ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            );
                          },
                        )),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
