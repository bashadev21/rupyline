import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';
import '../../widgets/background.dart';
import '../../widgets/profile_tile.dart';
import '../../widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'history/fund_req.dart';
import 'history/sub_history.dart';
import 'history/transaction_history.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

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
                    carticon: true,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.sp),
                      child: ListView(
                        children: [
                          ProfileTile(
                              ontap: () {
                                Get.to(() => HistorySubView());
                              },
                              text: 'Bid History',
                              image: 'assets/Payment History.png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => TransactionDetails());
                              },
                              text: 'Transaction History',
                              image: 'assets/Exchange.png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => FundReqDetails());
                              },
                              text: 'Fund Request History',
                              image: 'assets/Pouch.png'),
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
