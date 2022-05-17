import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';

import '../../../widgets/fund_text_tile.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class AddFund extends StatelessWidget {
  AddFund({Key? key}) : super(key: key);
  final TextEditingController _con = TextEditingController();
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
                title: 'Add Funds',
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: ListView(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.sp),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0.sp),
                          child: Column(
                            children: [
                              Txt(
                                text: 'Available Balance : ₹100.0',
                                fsize: 10,
                                color: Colors.grey[400]!,
                              ),
                              SizedBox(
                                height: 12.sp,
                              ),
                              FTextField(
                                  max: 10,
                                  keyboard: TextInputType.number,
                                  controller: _con,
                                  label: 'Enter Amount'),
                              SizedBox(
                                height: 12.sp,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CupertinoButton(
                                        color: Get.theme.primaryColor,
                                        child: const Txt(
                                          text: 'ADD POINTS VIA ONLINE',
                                          dsize: 12,
                                          defalutsize: true,
                                          iscenter: true,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 15.sp),
                                child: Txt(
                                  text: 'Minimum deposit : ₹100.0',
                                  fsize: 10,
                                  color: Colors.grey[400]!,
                                ),
                              ),
                            ],
                          ),
                        ),
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
