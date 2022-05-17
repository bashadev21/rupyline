import 'package:flutter/material.dart';
import 'package:rupyline/widgets/text.dart';

import '../../widgets/appbar.dart';
import '../../widgets/background.dart';
import '../../widgets/loader.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import '../../widgets/tab_item.dart';
import 'home/chat.dart';
import 'home/jackpot.dart';
import 'home/main_games.dart';
import 'home/satta_king.dart';
import 'home/star_line.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var safePadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          Positioned.fill(
              bottom: kBottomNavigationBarHeight,
              child: Column(
                children: [
                  BaseAppBar(
                    carticon: true,
                  ),
                  const Expanded(
                    child: Center(
                      child: Txt(
                        text: 'Home',
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
            top: kToolbarHeight + safePadding,
            height: 120.sp,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: Stack(
                children: [
                  Container(
                    height: 100.sp,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.sp, vertical: 10.sp),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Txt(
                            text: 'OFFICIAL MATKA PLAY APP',
                            weight: FontWeight.w500,
                            color: Get.theme.primaryColorDark,
                            fsize: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Txt(
                                text: 'SPECIAL\nOFFER',
                                fsize: 12,
                                weight: FontWeight.w600,
                                color: Get.theme.primaryColor,
                                iscenter: true,
                              ),
                              SizedBox(
                                width: 100.sp,
                              )
                            ],
                          ),
                          Txt(
                            text: 'Deposit 2000 get 2200 Points',
                            fsize: 10,
                            color: Colors.white,
                            weight: FontWeight.bold,
                          ),
                          Txt(
                            text: 'Deposit 5000 get 6000 Points',
                            fsize: 10,
                            color: Colors.white,
                            weight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 20.sp,
                        color: Colors.white,
                      )),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/offer_man.png',
                        height: 100.sp,
                        width: 100.sp,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              top: kToolbarHeight + safePadding + 120.sp,
              left: 0,
              right: 0,
              bottom: kBottomNavigationBarHeight,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        _launchUrl();
                      },
                      child: Row(
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
                                color: Get.theme.primaryColorLight,
                              )
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => ChatView());
                            },
                            child: Row(
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
                                  color: Get.theme.primaryColorLight,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TabItem(
                          ontap: () {
                            Get.to(() => StarLine());
                          },
                          text: 'PLAY\nSTARLINE',
                        ),
                        TabItem(
                          ontap: () {
                            Get.to(() => Jackpot());
                          },
                          text: 'PLAY\nJACKPOT',
                        ),
                        TabItem(
                          ontap: () {
                            Get.to(() => SattaKing());
                          },
                          text: 'SATTA\nKING',
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.sp),
                              child: Column(
                                children: [
                                  Container(
                                    height: 120.sp,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0.sp),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            fit: FlexFit.tight,
                                            flex: 4,
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Txt(
                                                    text: 'RUPAY LINE',
                                                    fsize: 11,
                                                    iscenter: true,
                                                  ),
                                                  ShakeWidget(
                                                    duration:
                                                        Duration(seconds: 5),
                                                    shakeConstant:
                                                        ShakeHorizontalConstant1(),
                                                    autoPlay: true,
                                                    enableWebMouseHover: true,
                                                    child: Txt(
                                                      text: '123*123*2',
                                                    ),
                                                  ),
                                                  Txt(
                                                    text:
                                                        'Market is closed for today',
                                                    fsize: 9,
                                                    color: Get
                                                        .theme.primaryColorDark,
                                                    iscenter: true,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 4,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Spacer(),
                                                      Icon(Icons.timer,
                                                          color: Colors.white,
                                                          size: 18.sp),
                                                      Spacer(),
                                                      Txt(
                                                        text:
                                                            'OPEN-BIDS\n11.25 AM',
                                                        fsize: 10,
                                                        iscenter: true,
                                                      ),
                                                      Spacer(),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Spacer(),
                                                      Icon(Icons.timer,
                                                          color: Colors.white,
                                                          size: 18.sp),
                                                      Spacer(),
                                                      Txt(
                                                        text:
                                                            'CLOSE-BIDS\n12.25 PM',
                                                        fsize: 10,
                                                        iscenter: true,
                                                      ),
                                                      Spacer(),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 2,
                                            fit: FlexFit.tight,
                                            child: Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Get.to(() => MainGames());
                                                    },
                                                    child: Image.asset(
                                                      'assets/Group 19.png',
                                                      fit: BoxFit.fitWidth,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Get.theme.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(20.sp)),
                                  ),
                                  SizedBox(
                                    height: 10.sp,
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  final Uri _url = Uri.parse('https://telegram.me/Shas28');

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}
