import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class ResultHistory extends StatelessWidget {
  const ResultHistory({Key? key}) : super(key: key);

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
                backicon: true,
                title: 'Result History',
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: 18.0.sp, right: 18.0.sp, bottom: 18.0.sp),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.sp)),
                          height: 120.sp,
                          child: Column(
                            children: [
                              Container(
                                height: 40.sp,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Txt(
                                      text: 'SRIDEVI - OPEN',
                                      fsize: 12,
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 5.0,
                                        offset: Offset(0.0, 0.75))
                                  ],
                                  color: Get.theme.primaryColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.sp),
                                    topLeft: Radius.circular(15.sp),
                                  ),
                                ),
                              ),
                              Container(
                                height: 80.sp,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Txt(
                                      text: 'Date:\n2022-10-20',
                                      iscenter: true,
                                      fsize: 10,
                                      color: Get.theme.primaryColor,
                                    ),
                                    Txt(
                                      text: 'Result:\n230-9',
                                      iscenter: true,
                                      fsize: 10,
                                      color: Get.theme.primaryColor,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ))
        ],
      ),
    );
  }
}
