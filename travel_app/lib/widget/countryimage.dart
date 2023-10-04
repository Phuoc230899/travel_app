import 'package:fitted_gridview/fitted_gridview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/country.dart';

class countryWidget extends StatelessWidget {
  const countryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildBuilderDelegate(childCount: 1,
              (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 20.h, left: 25.w, right: 25.w),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: FittedGridView(
              maxItemDisplay: list_country.length,
              itemCount: list_country.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Stack(children: [
                      Image.asset(
                        list_country[index].img,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      Positioned(
                          right: 15.w,
                          top: 10.h,
                          child: Icon(
                            Icons.favorite,
                            color: list_country[index].like ? Colors.red : Colors.white,
                          )),
                      Positioned(
                          left: 10.w,
                          bottom: 50.h,
                          child: Text(
                            list_country[index].name,
                            style: const TextStyle(
                                fontFamily: 'Rubik',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )),
                      Positioned(
                          left: 10.w,
                          bottom: 15.h,
                          child: Card(
                            elevation: 5.0,
                            color: Colors.white.withOpacity(0.2),
                            child: Container(
                              width: 50.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white.withOpacity(0.2)),
                              child: Row(children: [
                                const Expanded(
                                    child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                )),
                                Expanded(
                                  child: Text(
                                    list_country[index].rate,
                                    style: const TextStyle(
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10,
                                        color: Colors.black),
                                  ),
                                )
                              ]),
                            ),
                          ))
                    ]),
                  ),
                );
              },
              remainingItemsOverlay: (remaining) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.grey.withOpacity(0.7),
                    alignment: Alignment.center,
                    child: Text(
                      "+$remaining",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      })),
    ]);
  }
}
