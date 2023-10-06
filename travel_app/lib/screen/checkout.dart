import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/contact.dart';
import 'package:travel_app/data/room.dart';
import 'package:travel_app/screen/contact_detail.dart';
import 'package:travel_app/widget/add_contact.dart';

class Checkout extends StatefulWidget {
  Checkout({super.key, required this.room});
  final Room room;
  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  late Room item;
  final List<Contact> list_contact = [];

  @override
  void initState() {
    super.initState();
    item = widget.room;
  }

  void setContact(Contact contact) {
    if (contact != null) {
      setState(() {
        list_contact.add(contact);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
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
                  "Checkout",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              top: 140.h,
              left: 25.w,
              right: 25.w,
              child: Center(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        width: 24.w,
                        height: 24.w,
                        color: Colors.white,
                        child: const Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: const Text(
                        'Book and Review',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          width: 10.w,
                          height: 1.h,
                          color: Colors.white,
                        )),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        width: 25.w,
                        height: 25.w,
                        color: Colors.white.withOpacity(0.2),
                        child: const Center(
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: const Text(
                        'Payment',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Container(
                          width: 10.w,
                          height: 1.h,
                          color: Colors.white,
                        )),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Container(
                        width: 25.w,
                        height: 25.w,
                        color: Colors.white.withOpacity(0.2),
                        child: const Center(
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
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
                      SliverList(
                          delegate: SliverChildBuilderDelegate(
                        childCount: 1,
                        (context, index) {
                          return Column(
                            children: [
                              Padding(
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
                                          top: 20.h, left: 10.w, right: 10.w),
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 4,
                                                    child: Column(children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text(
                                                          item.name,
                                                          textAlign:
                                                              TextAlign.left,
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
                                                              TextAlign.left,
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
                                                              TextAlign.left,
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
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: SizedBox(
                                                        width: 60.w,
                                                        height: 60.w,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          child: Image.asset(
                                                            item.img,
                                                            fit: BoxFit.contain,
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
                                                            fontFamily: 'Rubik',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                            fontFamily: 'Rubik',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                            fontFamily: 'Rubik',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                            fontFamily: 'Rubik',
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                padding:
                                                    EdgeInsets.only(top: 25.h),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      '${item.price}.000 VND',
                                                      style: const TextStyle(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    const Text(
                                                      '/night',
                                                      style: TextStyle(
                                                          fontFamily: 'Rubik',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    )
                                                  ],
                                                ),
                                              )),
                                              const Expanded(
                                                  child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  "1 room",
                                                  style: TextStyle(
                                                      fontFamily: "Rubik",
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                                ),
                                              ))
                                            ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  child: SizedBox(
                                    width: 325.w,
                                    height: list_contact.isNotEmpty
                                        ? list_contact.length < 4
                                            ? 140.h + 70.h * list_contact.length
                                            : 140.h + 70.h * 3
                                        : 140.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.h, left: 20.w),
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/contact.png'),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            const Text(
                                              "Contact Details",
                                              style: TextStyle(
                                                  fontFamily: 'Rubik',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.justify,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        list_contact.isNotEmpty
                                            ? addContact(
                                                list_contact: list_contact)
                                            : Container(),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 200.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                color: const Color.fromARGB(
                                                    255, 224, 221, 245)),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.w),
                                              child: Row(children: [
                                                InkWell(
                                                  onTap: () async {
                                                    Contact contact =
                                                        await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const contactDetail()));
                                                    setContact(contact);
                                                  },
                                                  child: Container(
                                                    width: 40.w,
                                                    height: 40.h,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(32),
                                                        color: Colors.white),
                                                    child: const Icon(
                                                      Icons.add,
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20.w,
                                                ),
                                                InkWell(
                                                  onTap: () => Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const contactDetail())),
                                                  child: const Text(
                                                    "Add Contact",
                                                    style: TextStyle(
                                                        fontFamily: 'Rubik',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                        color: Color.fromARGB(
                                                            255, 97, 85, 204)),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                )
                                              ]),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10.h),
                                child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(16.0)),
                                  child: SizedBox(
                                    width: 325.w,
                                    height: 140.h,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.h, left: 20.w),
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                                'assets/images/promo code.png'),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            const Text(
                                              "Promo Code",
                                              style: TextStyle(
                                                  fontFamily: 'Rubik',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.justify,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 200.w,
                                            height: 50.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(32),
                                                color: const Color.fromARGB(
                                                    255, 224, 221, 245)),
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.w),
                                              child: Row(children: [
                                                Container(
                                                  width: 40.w,
                                                  height: 40.h,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32),
                                                      color: Colors.white),
                                                  child: const Icon(
                                                    Icons.add,
                                                    size: 24,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 20.w,
                                                ),
                                                const Text(
                                                  "Add Promo Code",
                                                  style: TextStyle(
                                                      fontFamily: 'Rubik',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Color.fromARGB(
                                                          255, 97, 85, 204)),
                                                )
                                              ]),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 325.w,
                                height: 50.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    color: const Color.fromARGB(
                                        255, 143, 103, 232)),
                                child: const Center(
                                    child: Text(
                                  'Payment',
                                  style: TextStyle(
                                      fontFamily: 'Rubik',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                )),
                              )
                            ],
                          );
                        },
                      ))
                    ],
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
