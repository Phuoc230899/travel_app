import 'package:flutter/material.dart';
import 'package:travel_app/screen/onboaring.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  void navigateToScreen2(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const OnBoard(),
      ));
    });
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    navigateToScreen2(context);
    return Scaffold(
        key: navigatorKey,
        body: Image.asset(
          'assets/images/splashscreen.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ));
  }
}
