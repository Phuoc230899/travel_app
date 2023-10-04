import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class dateForm extends StatefulWidget {
  const dateForm({super.key});

  @override
  State<dateForm> createState() => _dateFormState();
}

class _dateFormState extends State<dateForm> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();

  String getMonthName(int month) {
    final List<String> monthNames = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];

    if (month >= 1 && month <= 12) {
      return monthNames[month - 1];
    } else {
      return 'Invalid Month';
    }
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Card(
          elevation: 5.0,
          child: Container(
            width: 325.w,
            height: 70.h,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
            child: Row(children: [
              Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Image.asset('assets/images/dateform.png')),
              SizedBox(
                width: 138.w,
                height: 37.h,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Select Date',
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () {
                          showCustomDateRangePicker(
                            context,
                            dismissible: true,
                            minimumDate: DateTime.now()
                                .subtract(const Duration(days: 30)),
                            maximumDate:
                                DateTime.now().add(const Duration(days: 30)),
                            endDate: endDate,
                            startDate: startDate,
                            backgroundColor: Colors.white,
                            primaryColor:
                                const Color.fromARGB(255, 143, 103, 232),
                            onApplyClick: (start, end) {
                              setState(() {
                                endDate = end;
                                startDate = start;
                              });
                            },
                            onCancelClick: () {
                              setState(() {
                                endDate = DateTime.now();
                                startDate = DateTime.now();
                              });
                            },
                          );
                        },
                        child: Text(
                          '${startDate.day.toString()} ${getMonthName(startDate.month)} - ${endDate.day.toString()} ${getMonthName(endDate.month)} ${endDate.year.toString()}',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )),
    );
  }
}
