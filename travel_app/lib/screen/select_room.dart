import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/hotels.dart';
import 'package:travel_app/data/room.dart';
import 'package:travel_app/screen/checkout.dart';
import 'package:travel_app/screen/detail_hotel.dart';

class selectRoom extends StatefulWidget {
  const selectRoom({super.key});

  @override
  State<selectRoom> createState() => _selectRoomState();
}

class _selectRoomState extends State<selectRoom> {
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
                  left: 25.w,
                  top: 60.h,
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
                left: 120.w,
                child: SizedBox(
                  width: 270.w,
                  height: 65.h,
                  child: const Text(
                    "Select Room",
                    style: TextStyle(
                        fontFamily: "Rubik",
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 375.w,
                  height: size.height * 0.85,
                  margin: EdgeInsets.only(top: size.height * 0.15),
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: SizedBox(
                    width: 335.w,
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
                                children: list_room.map((item) {
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
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 20.h,
                                              left: 10.w,
                                              right: 10.w),
                                          child: Column(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        flex: 4,
                                                        child:
                                                            Column(children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              item.name,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              'Room Size: ${item.size} m2',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10.h,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              item.refund
                                                                  ? 'Non-refundable'
                                                                  : 'Free Cancellation',
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'Rubik',
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400),
                                                            ),
                                                          )
                                                        ]),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: SizedBox(
                                                            width: 60.w,
                                                            height: 60.w,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              child:
                                                                  Image.asset(
                                                                item.img,
                                                                fit: BoxFit
                                                                    .contain,
                                                                width: 60.w,
                                                                height: 60.w,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  )),
                                              Expanded(
                                                flex: 1,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                        child: Column(
                                                      children: [
                                                        Image.asset(
                                                            "assets/images/wifi free.png"),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        SizedBox(
                                                          width: 48.w,
                                                          height: 40.h,
                                                          child: const Text(
                                                            "Free Wifi",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Rubik',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                    Expanded(
                                                        child: Column(
                                                      children: [
                                                        Image.asset(
                                                            "assets/images/refund.png"),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        SizedBox(
                                                          width: 54.w,
                                                          height: 40.h,
                                                          child: const Text(
                                                            "Non-Refundable",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Rubik',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                    Expanded(
                                                        child: Column(
                                                      children: [
                                                        Image.asset(
                                                            "assets/images/breakfast.png"),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        SizedBox(
                                                          width: 48.w,
                                                          height: 40.h,
                                                          child: const Text(
                                                            "Free Breakfast",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Rubik',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                    Expanded(
                                                        child: Column(
                                                      children: [
                                                        Image.asset(
                                                            "assets/images/smoking.png"),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        SizedBox(
                                                          width: 48.w,
                                                          height: 40.h,
                                                          child: const Text(
                                                            "Non-Smoking",
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Rubik',
                                                                fontSize: 10,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 335.w,
                                                child: Image.asset(
                                                  'assets/images/Line 15.png',
                                                  fit: BoxFit.cover,
                                                  width: 335.w,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Row(children: [
                                                  Expanded(
                                                      child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 25.h),
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
                                                          height: 10.h,
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
                                                    ),
                                                  )),
                                                  Expanded(
                                                      child: InkWell(
                                                    onTap: () => Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                Checkout(
                                                                    room:
                                                                        item))),
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
                                                        "Choose",
                                                        style: TextStyle(
                                                            fontFamily: "Rubik",
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  ))
                                                ]),
                                              ),
                                            ],
                                          ),
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
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
