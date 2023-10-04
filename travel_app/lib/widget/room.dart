import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class roomWidget extends StatefulWidget {
  const roomWidget({super.key});

  @override
  State<roomWidget> createState() => _roomWidgetState();
}

class _roomWidgetState extends State<roomWidget> {
  int guest = 1;
  int room = 1;

  void setRoom(int r) {
    setState(() {
      room = r;
    });
  }

  void setGuest(int g) {
    setState(() {
      guest = g;
    });
  }

  void openDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: StatefulBuilder(
                builder: (context, StateSetter setState) {
                  return Container(
                    width: 500.w,
                    height: 320.h,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              width: 225.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Image.asset('assets/images/guest.png'),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: const Text(
                                      "Guest",
                                      style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          if (guest > 1) {
                                            setState(() {
                                              guest--;
                                            });
                                            setGuest(guest);
                                          }
                                        },
                                        child: Icon(Icons.remove_circle,
                                            color: guest > 1
                                                ? const Color.fromARGB(
                                                    255, 62, 200, 188)
                                                : const Color.fromARGB(
                                                        255, 62, 200, 188)
                                                    .withOpacity(0.3),
                                            size: 32),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '${guest}',
                                        style: const TextStyle(
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(
                                            () {
                                              guest++;
                                              setGuest(guest);
                                            },
                                          );
                                        },
                                        child: const Icon(
                                          Icons.add_circle,
                                          color:
                                              Color.fromARGB(255, 62, 200, 188),
                                          size: 32,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Card(
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              width: 225.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0)),
                              child: Row(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Image.asset('assets/images/room.png'),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: const Text(
                                      "Room",
                                      style: TextStyle(
                                          fontFamily: 'Rubik',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          if (room > 1) {
                                            setState(() {
                                              room--;
                                            });
                                            setRoom(room);
                                          }
                                        },
                                        child: Icon(Icons.remove_circle,
                                            color: room > 1
                                                ? const Color.fromARGB(
                                                    255, 62, 200, 188)
                                                : const Color.fromARGB(
                                                        255, 62, 200, 188)
                                                    .withOpacity(0.3),
                                            size: 32),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        '${room}',
                                        style: const TextStyle(
                                            fontFamily: 'Rubik',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(
                                            () {
                                              room++;
                                            },
                                          );
                                          setRoom(room);
                                        },
                                        child: const Icon(
                                          Icons.add_circle,
                                          color:
                                              Color.fromARGB(255, 62, 200, 188),
                                          size: 32,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: InkWell(
                            onTap: () => Navigator.of(context).pop(),
                            child: Container(
                              width: 225.w,
                              height: 70.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color:
                                      const Color.fromARGB(255, 143, 103, 232)),
                              child: const Center(
                                  child: Text(
                                "Done",
                                style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
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
                  child: Image.asset('assets/images/room.png')),
              SizedBox(
                width: 138.w,
                height: 37.h,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Guest and Room',
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
                    InkWell(
                      onTap: () {
                        openDialog();
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '$guest Guest, $room Room',
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
