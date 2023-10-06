import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/hotels.dart';
import 'package:travel_app/screen/select_room.dart';

class detailHotel extends StatefulWidget {
  const detailHotel({super.key, required this.hotel});
  final Hotel hotel;
  @override
  State<detailHotel> createState() => _detailHotelState();
}

class _detailHotelState extends State<detailHotel> {
  late final Hotel item;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    item = widget.hotel;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: 375.w,
              height: 400.h,
              child: Hero(
                tag: item.img,
                child: Image.asset(
                  item.img,
                  fit: BoxFit.cover,
                  width: 375.w,
                  height: 400.h,
                ),
              )),
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
                    icon: const Icon(Icons.favorite),
                    color: const Color.fromARGB(
                      255,
                      245,
                      220,
                      220,
                    ),
                    onPressed: () => Navigator.pop(context),
                    iconSize: 20,
                  ),
                ),
              )),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.35),
            width: 375.w,
            // height: 500.h,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32))),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 50.h, right: 20.w),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.name,
                            style: const TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Text.rich(TextSpan(
                                  text: "${item.price}.000 VND",
                                  style: const TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                  children: const [
                                    TextSpan(
                                        text: "/night",
                                        style: TextStyle(
                                            fontFamily: 'Rubik',
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400))
                                  ]))))
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset('assets/images/position.png'),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        item.address,
                        style: const TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 335.w,
                    child: Image.asset(
                      'assets/images/Line 15.png',
                      fit: BoxFit.cover,
                      width: 335.w,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Image.asset('assets/images/star.png'),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text.rich(TextSpan(
                                text: '${item.rate}/5',
                                style: const TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                      text: ' (${item.reviews} reviews)',
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey)),
                                ])),
                          ],
                        )),
                        const Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "See all",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 97, 85, 204)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    width: 335.w,
                    child: Image.asset(
                      'assets/images/Line 15.png',
                      fit: BoxFit.cover,
                      width: 335.w,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Information",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    "You will find every comfort because many of the services that the hotel offers for travellers and of course the hotel is very comfortable.",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/restaurant.png"),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 48.w,
                            height: 40.h,
                            child: const Text(
                              "Restaurant",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/wifi.png"),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 48.w,
                            height: 40.h,
                            child: const Text(
                              "Wifi",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/currency.png"),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 48.w,
                            height: 40.h,
                            child: const Text(
                              "Currency Exchange",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/front desk.png"),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 48.w,
                            height: 40.h,
                            child: const Text(
                              "24-hour Front Desk",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Image.asset("assets/images/more.png"),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: 48.w,
                            height: 40.h,
                            child: const Text(
                              "More",
                              style: TextStyle(
                                  fontFamily: 'Rubik',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Location",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Located in the famous neighborhood of Seoul, Grand Luxury’s is set in a building built in the 2010s.",
                      style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: 325.w,
                    height: 125.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.cover,
                        width: 325.w,
                        height: 125.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  )
                ]),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const selectRoom())),
          child: Container(
            width: 325.w,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color.fromARGB(255, 143, 103, 232)),
            child: const Center(
                child: Text(
              "Select Room",
              style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
          ),
        ),
      )),
    );
  }
}
