import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'starline_games.dart';

class StarLine extends StatelessWidget {
  const StarLine({Key? key}) : super(key: key);

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
                title: 'STARLINE',
              ),
              Expanded(
                child: Container(
                  color: Colors.grey[50],
                  child: ListView.builder(itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 15.0.sp, right: 15.0.sp, bottom: 10.0.sp),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Get.theme.primaryColorLight,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8.sp),
                            color:
                                Get.theme.primaryColorLight.withOpacity(0.02)),
                        child: Padding(
                          padding: EdgeInsets.all(10.0.sp),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Txt(
                                    text: '10:15 AM',
                                    fsize: 10,
                                    color: Colors.black,
                                  ),
                                  Txt(
                                    text: '230-9',
                                    fsize: 11,
                                    color: Get.theme.primaryColorLight,
                                  )
                                ],
                              ),
                              Image.asset(
                                'assets/Alarm Clock.png',
                                height: 20.sp,
                              ),
                              Txt(
                                text: 'Betting is closed for today',
                                fsize: 8,
                                color: Colors.black,
                                weight: FontWeight.w500,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => StarLineGames());
                                },
                                child: Image.asset(
                                  'assets/Group 19.png',
                                  height: 20.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
                ),
              ),
              Container(
                height: kToolbarHeight,
              )
            ],
          ))
        ],
      ),
    );
  }
}
