import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/contact.dart';

class addContact extends StatelessWidget {
  const addContact({super.key, required this.list_contact});
  final List<Contact> list_contact;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 325.w,
        height: list_contact.length < 4 ? 70.h * list_contact.length : 70.h * 3,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 10.h),
          itemCount: list_contact.length,
          physics: list_contact.length < 4
              ? const NeverScrollableScrollPhysics()
              : const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 20.h, right: 20.h),
              child: Column(children: [
                Container(
                  width: 293.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                          width: 1.0,
                          color: const Color.fromARGB(255, 143, 103, 232))),
                  child: Row(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: Image.asset(
                          'assets/images/contact.png',
                          width: 40.w,
                          height: 40.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 10.h),
                      child: Column(children: [
                        Center(
                            child: Text(
                          list_contact[index].name,
                          style: const TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )),
                        Center(
                          child: Text(
                            list_contact[index].email,
                            style: const TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ]),
                    )
                  ]),
                ),
              ]),
            );
          },
        ),
      ),
    ]);
  }
}
