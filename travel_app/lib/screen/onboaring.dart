import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/home.dart';
import 'package:travel_app/widget/onboard1.dart';
import 'package:travel_app/widget/onboard2.dart';
import 'package:travel_app/widget/onboard3.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  int _currentPage = 0;
  int pageCount = 3;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController pageController = PageController();

    void _goToNextPage() {
      if (_currentPage < pageCount - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentPage++;
        });
      }
      if (_currentPage == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Homepage()));
      }
    }

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              OnBoard1(),
              OnBoard2(),
              OnBoard3(),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25.w, bottom: 50.h),
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: const WormEffect(
                    activeDotColor: Colors.orange,
                    dotColor: Color.fromARGB(255, 212, 211, 211),
                    spacing: 4.0,
                    dotWidth: 12.0, // Độ rộng của dots
                    dotHeight: 6.0, // Độ cao của dots
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 25.w, bottom: 50.h),
                child: TextButton(
                  onPressed: () {
                    _goToNextPage();
                  },
                  child: Container(
                      height: 50.h,
                      width: 125.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          color: const Color.fromARGB(255, 143, 103, 232)),
                      child: Center(
                        child: Text(
                          _currentPage == 2 ? "Get Started" : "Next",
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white),
                        ),
                      )),
                ),
              ),
            ))
          ],
        )
      ],
    ));
  }
}
