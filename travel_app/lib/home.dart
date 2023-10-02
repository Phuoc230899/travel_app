import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.h, left: 25.w, right: 25.w),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Hi, Phước!",
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        const Text(
                          "Where are you going next?",
                          style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                child: Padding(
                  padding: EdgeInsets.only(top: 80.h, right: 25.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Stack(children: [
                            const Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 35,
                            ),
                            Positioned(
                              top: 5,
                              right: 5,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 45.w,
                          height: 45.w,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset('assets/images/avatar.jpg')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 191.h, left: 25.w, right: 25.w),
                child: Card(
                  elevation: 1.0,
                  child: TextField(
                    textAlign: TextAlign.left,
                    textInputAction: TextInputAction.done,
                    onEditingComplete: () {},
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.black,
                        size: 16,
                      ),
                      hintText: 'Search your destination',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          borderSide: BorderSide.none),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Josefin',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Container(
              width: 325.w,
              height: 107.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(children: [
                      Container(
                        width: 98.33.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color.fromARGB(255, 254, 156, 94)
                                .withOpacity(0.2)),
                        child: Center(
                            child: SvgPicture.asset(
                          'assets/icon/hotels.svg',
                          width: 24.w,
                          height: 24.h,
                        )),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: const Text(
                            "Hotels",
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ))
                    ]),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(children: [
                      Container(
                        width: 98.33.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color.fromARGB(255, 247, 119, 119)
                                .withOpacity(0.2)),
                        child: Center(
                            child: SvgPicture.asset(
                          'assets/icon/flight.svg',
                          width: 30.w,
                          height: 30.h,
                        )),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: const Text(
                            "Flight",
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ))
                    ]),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Column(children: [
                      Container(
                        width: 98.33.w,
                        height: 75.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: const Color.fromARGB(255, 62, 200, 188)
                                .withOpacity(0.2)),
                        child: Center(
                            child: SvgPicture.asset(
                          'assets/icon/all.svg',
                          width: 30.w,
                          height: 30.h,
                        )),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: const Text(
                            "All",
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ))
                    ]),
                  )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
            child: Row(children: [
              SizedBox(
                width: 182.w,
                height: 21.h,
                child: const Text(
                  "Popular Destinations",
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(width: 97.w,),
              SizedBox(
                width: 46.w,
                height: 17.h,
                child: const Text(
                  'See all',
                  style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(
                        255,
                        97,
                        85,
                        204
                      )),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
