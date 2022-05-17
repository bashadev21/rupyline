import 'package:flutter/material.dart';

import '../../widgets/appbar.dart';
import '../../widgets/background.dart';
import '../../widgets/text.dart';
import '../../widgets/wallet_tile.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'wallet/add_fund.dart';
import 'wallet/result_histpry.dart';
import 'wallet/withdraw.dart';

class WalletView extends StatelessWidget {
  const WalletView({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      child: ListView(
                        children: [
                          WalletTile(
                              ontap: () {
                                Get.to(() => WithDrawFund());
                              },
                              text: 'Withdraw Funds'),
                          WalletTile(
                              ontap: () {
                                Get.to(() => AddFund());
                              },
                              text: 'Add Funds'),
                          WalletTile(
                              ontap: () {
                                Get.to(() => ResultHistory());
                              },
                              text: 'Result History'),
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
