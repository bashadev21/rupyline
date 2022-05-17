import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({Key? key}) : super(key: key);

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
                title: 'Transaction History',
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Get.theme.primaryColor,
                                border: Border.all(
                                    color: Get.theme.primaryColorDark,
                                    width: 2.sp),
                                borderRadius: BorderRadius.circular(16.sp)),
                            child: ListTile(
                              title: Txt(
                                text:
                                    'Add Fund | ₹ 123 (100 Points) | \n12/12/2021 12:12 PM',
                                fsize: 13,
                              ),
                              subtitle: Txt(
                                text: 'Pending',
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.sp,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
