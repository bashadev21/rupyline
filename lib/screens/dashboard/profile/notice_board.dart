import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class NoticeBoardView extends StatelessWidget {
  const NoticeBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(),
          Positioned.fill(
              child: Column(
            children: [
              BaseAppBar(
                title: 'Notice Board',
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: ListView(
                    children: [
                      Txt(
                        text: 'How to play online Matka',
                        color: Get.theme.primaryColor,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      Txt(
                        text: 'Lorem Text comes here' * 10,
                        fsize: 8,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'Minimum Deposit - 500',
                        fsize: 14,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      const Txt(
                        text: 'Minimum Withdraw - 1000',
                        fsize: 14,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Txt(
                        text: 'WithDraw Fund ',
                        color: Get.theme.primaryColor,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      const Txt(
                        text: 'You can directly withdraw money from APP ',
                        fsize: 12,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      const Txt(
                        text: 'Withdraw Time 24 Hours Open',
                        fsize: 12,
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Txt(
                        text: 'ADMIN CONTACT',
                        color: Get.theme.primaryColor,
                      ),
                      SizedBox(
                        height: 6.sp,
                      ),
                      const Txt(
                        text:
                            'You can talk and chat with admin at\nTelegram and Live chat ',
                        fsize: 12,
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/Telegram App.png',
                                height: 28.sp,
                                width: 28.sp,
                              ),
                              Txt(
                                text: 'Telegram',
                                fsize: 13,
                                weight: FontWeight.w500,
                                color: Get.theme.primaryColor,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/Speech.png',
                                height: 30.sp,
                                width: 30.sp,
                              ),
                              Txt(
                                text: 'Live Chat',
                                fsize: 13,
                                weight: FontWeight.w500,
                                color: Get.theme.primaryColor,
                              )
                            ],
                          ),
                        ],
                      ),
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
