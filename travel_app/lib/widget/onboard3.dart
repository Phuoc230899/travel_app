import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoard3 extends StatelessWidget {
  const OnBoard3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/images/onboard3.png',
                    fit: BoxFit.cover,
                    width: size.width * 0.8,
                  ))),
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 145.w,
                  height: 28.h,
                  child: const Text(
                    'Enjoy your trip',
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        fontSize: 24),
                  )),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                  width: 292.w,
                  height: 50.h,
                  child: const Text(
                    'Easy discovering new places and share these between your friends and travel together.',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )),
            ),
          ),
        ]),
      ),
    );
  }
}
