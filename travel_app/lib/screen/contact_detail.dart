import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/contact.dart';

class contactDetail extends StatefulWidget {
  const contactDetail({super.key});

  @override
  State<contactDetail> createState() => _contactDetailState();
}

class _contactDetailState extends State<contactDetail> {
  // bool _isLoading = false;
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  bool _validateName = false;
  bool _validatePhone = false;
  bool _validateEmail = false;

  Future<void> _onsubmit() async {
    setState(() {
      name.text.isEmpty ? _validateName = true : _validateName = false;

      phone.text.isEmpty ? _validatePhone = true : _validatePhone = false;
    });
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    phone.dispose();
    super.dispose();
  }

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
              left: 140.w,
              child: SizedBox(
                width: 124.w,
                height: 72.h,
                child: const Text(
                  "Contact Details",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
          child: Column(children: [
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              child: TextField(
                controller: name,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelText: 'Name',
                  errorText: _validateName ? "Không được để trống !" : null,
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              child: TextField(
                controller: phone,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelText: 'Phone',
                  errorText: _validateName ? "Không được để trống !" : null,
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              child: TextField(
                controller: email,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  labelText: 'Email',
                  errorText: _validateName ? "Không được để trống !" : null,
                  labelStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.w,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'E-ticket will be sent to your E-mail',
                style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 20.h),
              child: InkWell(
                onTap: () {
                  Contact contact = Contact(
                      name: name.text, phone: phone.text, email: email.text);
                  Navigator.pop(context, contact);
                },
                child: Container(
                  width: 325.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.0),
                    color: const Color.fromARGB(255, 143, 103, 232),
                  ),
                  child: const Center(
                      child: Text(
                    "Done",
                    style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
