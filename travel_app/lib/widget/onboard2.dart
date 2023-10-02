import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoard2 extends StatelessWidget {
  const OnBoard2({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(top: size.height * 0.1),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset('assets/images/onboard2.png',fit: BoxFit.cover,width: size.width,))),
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
                    'Find a hotel room',
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
                    'Select the day, book your room. We give you the best price.',
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
