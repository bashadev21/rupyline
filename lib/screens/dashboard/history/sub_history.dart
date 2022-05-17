import 'package:flutter/material.dart';
import 'package:rupyline/screens/dashboard/history/history_details.dart';

import 'package:sizer/sizer.dart';

import '../../../widgets/appbar.dart';
import '../../../widgets/background.dart';
import '../../../widgets/history_sub_tile.dart';
import 'package:get/get.dart';

class HistorySubView extends StatelessWidget {
  const HistorySubView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          Positioned.fill(
              bottom: kBottomNavigationBarHeight,
              child: Column(
                children: [
                  BaseAppBar(
                    backicon: true,
                    title: 'RUPYLINE',
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.sp),
                      child: ListView(
                        children: [
                          HistorySubTile(
                              ontap: () {
                                Get.to(() => HistoryDetails(
                                      title: 'Bid History',
                                    ));
                              },
                              text: 'Bid History',
                              subtext: 'View your Game main Games',
                              image: 'assets/Tips.png'),
                          HistorySubTile(
                              ontap: () {
                                Get.to(() => HistoryDetails(
                                      title: 'Transaction History',
                                    ));
                              },
                              text: 'Transaction History',
                              subtext: 'View Starline Gamaes',
                              image: 'assets/Man Holding Bags With Money.png'),
                          HistorySubTile(
                              ontap: () {
                                Get.to(() => HistoryDetails(
                                      title: 'Jackpot Points History',
                                    ));
                              },
                              text: 'Jackpot Points History',
                              subtext: 'View Jackpot Games',
                              image: 'assets/Man With Money.png'),
                          HistorySubTile(
                              ontap: () {
                                Get.to(() => HistoryDetails(
                                      title: 'Satta King Point History',
                                    ));
                              },
                              text: 'Satta King Point History',
                              subtext: 'View Satta king Games',
                              image: 'assets/Rich.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
