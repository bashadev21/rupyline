import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Gamerate extends StatelessWidget {
  const Gamerate({Key? key}) : super(key: key);

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
                title: 'Game Rate',
                backicon: true,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 8,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.sp),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 7.sp,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Txt(
                                            text: 'Game Win Ratio',
                                            color: Get.theme.primaryColorLight,
                                            fsize: 15,
                                          ),
                                        ],
                                      ),
                                      ListView.builder(
                                          itemCount: 3,
                                          shrinkWrap: true,
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemBuilder: ((context, index) {
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 8.sp,
                                                  horizontal: 12.sp),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Txt(
                                                    text: 'Single Digit',
                                                    color: Get.theme
                                                        .primaryColorLight,
                                                    fsize: 11,
                                                  ),
                                                  Txt(
                                                    text: '1 KA 10.00',
                                                    color:
                                                        Get.theme.primaryColor,
                                                    fsize: 11,
                                                  ),
                                                ],
                                              ),
                                            );
                                          })),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20.sp,
                                )
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
