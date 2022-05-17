import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class StarLineGames extends StatelessWidget {
  const StarLineGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          Positioned.fill(
              child: Column(
            children: [
              BaseAppBar(
                backicon: true,
                title: 'DASHBOARD',
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: Get.height / 2 - 80.sp,
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/signle_digit.png'),
                                      Image.asset('assets/single_panna.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(8.0.sp),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/double_panna.png'),
                                      Image.asset('assets/triple_panna.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: kBottomNavigationBarHeight,
              )
            ],
          ))
        ],
      ),
    );
  }
}
