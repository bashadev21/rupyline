import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class HistoryDetails extends StatelessWidget {
  final String title;
  const HistoryDetails({Key? key, this.title = ''}) : super(key: key);

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
                title: title,
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
                            child: ExpansionTile(
                                iconColor: Colors.white,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Txt(
                                                text: 'Digit',
                                                fsize: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Txt(
                                                text: 'Points',
                                                fsize: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Txt(
                                                text: 'Game Type',
                                                fsize: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 5.sp,
                                  ),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 4.sp),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Txt(
                                                      text: '121-1',
                                                      fsize: 10,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Txt(
                                                      text: '122',
                                                      fsize: 10,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Txt(
                                                      text: 'Open',
                                                      fsize: 10,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.sp),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Txt(
                                                  text: 'Total',
                                                  fsize: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Txt(
                                                  text: '1222',
                                                  fsize: 12,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Txt(
                                                  text: '',
                                                  fsize: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                subtitle: Txt(
                                  text: 'Pending',
                                  fsize: 12,
                                  color: Colors.yellow,
                                ),
                                title: Txt(
                                  text: "SRIDEVI - OPEN",
                                  fsize: 13,
                                )),
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
