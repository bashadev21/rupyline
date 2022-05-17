import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:get/get.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';

class Jackpot extends StatelessWidget {
  const Jackpot({Key? key}) : super(key: key);

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
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[50],
                  child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                      ),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Txt(
                                  text: 'Bettig closed for today',
                                  fsize: 9,
                                  weight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                                Image.asset(
                                  'assets/alrm.png',
                                  height: 40.sp,
                                  width: 40.sp,
                                  fit: BoxFit.cover,
                                ),
                                Txt(
                                  text: '10:00AM',
                                  color: Colors.black,
                                  fsize: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Get.theme.primaryColorLight,
                                      size: 17.sp,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Get.theme.primaryColorLight,
                                      size: 17.sp,
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  'assets/Group 19.png',
                                  height: 30.sp,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Get.theme.primaryColorLight, width: 2),
                              borderRadius: BorderRadius.circular(10.sp),
                              color:
                                  Get.theme.primaryColorLight.withOpacity(0.03),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Container(
                height: kBottomNavigationBarHeight,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
