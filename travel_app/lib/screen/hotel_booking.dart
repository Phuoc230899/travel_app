import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/screen/dateform.dart';
import 'package:travel_app/screen/hotels.dart';
import 'package:travel_app/widget/room.dart';

class HotelBooking extends StatefulWidget {
  const HotelBooking({super.key});

  @override
  State<HotelBooking> createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
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
              top: 122.h,
              left: 53.w,
              child: SizedBox(
                width: 270.w,
                height: 65.h,
                child: const Column(children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Hotel Booking",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Choose your favorite hotel and enjoy the service',
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Card(
                  elevation: 5.0,
                  child: Container(
                    width: 325.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Row(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          child: Image.asset('assets/images/maps.png')),
                      SizedBox(
                        width: 84.w,
                        height: 37.h,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Destination',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'South Korea',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            )
                          ],
                        ),
                      )
                    ]),
                  )),
            ),
            const dateForm(),
            const roomWidget(),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Container(
                width: 325.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: const Color.fromARGB(255, 143, 103, 232)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Hotels()));
                  },
                  child: const Center(
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ]),
    );
  }
}
