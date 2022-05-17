import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import '../game_form.dart';

class MainGames extends StatelessWidget {
  const MainGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackGround(),
        Positioned.fill(
            child: Column(
          children: [
            BaseAppBar(
              backicon: true,
              title: 'SRIDEVI DASHBOARD',
            ),
            Expanded(
              child: Container(
                color: Colors.grey[50],
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.sp,
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: InkWell(
                              onTap: () {
                                Get.to(() => GameForm());
                              },
                              child: Image.asset('assets/signle_digit.png')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/jodi_digits.png'),
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/double_panna.png'),
                              Image.asset('assets/jodi_digits.png'),
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/triple_panna.png'),
                              Image.asset('assets/half_sangam.png'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Image.asset('assets/signle_digit.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Container(
              height: kBottomNavigationBarHeight,
            )
          ],
        ))
      ]),
    );
  }
}
