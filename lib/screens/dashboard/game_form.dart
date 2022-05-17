import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class GameForm extends StatelessWidget {
  const GameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackGround(),
          Positioned.fill(
              child: Column(
            children: [
              BaseAppBar(
                backicon: true,
                title: 'SRIDEVI - Single Digits',
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            const Txt(
                              text: 'Availabale balance : 100.0',
                              color: Colors.black,
                              fsize: 12,
                              weight: FontWeight.w600,
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.sp),
                                                    color: Get.theme
                                                        .primaryColorDark),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 12.sp),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Txt(
                                                        text: '2022-12-10',
                                                        color: Colors.black,
                                                        fsize: 11,
                                                        weight: FontWeight.w600,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        // SizedBox(
                                        //   height: 15.sp,
                                        // ),
                                        // Txt(
                                        //   text: 'Enter Digit',
                                        //   color: Colors.black,
                                        //   fsize: 12,
                                        //   weight: FontWeight.w600,
                                        // ),
                                        // SizedBox(
                                        //   height: 15.sp,
                                        // ),
                                        // Txt(
                                        //   text: 'points',
                                        //   color: Colors.black,
                                        //   fsize: 12,
                                        //   weight: FontWeight.w600,
                                        // ),
                                        // SizedBox(
                                        //   height: 15.sp,
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20.sp,
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.sp),
                                                    color: Get.theme
                                                        .primaryColorDark),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 12.sp),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Txt(
                                                        text: 'Open',
                                                        color: Colors.black,
                                                        fsize: 11,
                                                        weight: FontWeight.w600,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Txt(
                                          text: 'Enter Digit',
                                          color: Colors.black,
                                          fsize: 13,
                                          weight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  )),
                                  SizedBox(
                                    width: 20.sp,
                                  ),
                                  Expanded(
                                      child: Container(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]')),
                                      ],
                                      maxLength: 3,
                                      textAlign: TextAlign.center,
                                      cursorColor: Get.theme.primaryColor,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding: EdgeInsets.all(11.sp),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Txt(
                                          text: 'Points',
                                          color: Colors.black,
                                          fsize: 13,
                                          weight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  )),
                                  SizedBox(
                                    width: 20.sp,
                                  ),
                                  Expanded(
                                      child: Container(
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]')),
                                      ],
                                      maxLength: 3,
                                      textAlign: TextAlign.center,
                                      cursorColor: Get.theme.primaryColor,
                                      decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding: EdgeInsets.all(11.sp),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.sp),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CupertinoButton(
                                        color: Get.theme.primaryColorDark,
                                        child: const Txt(
                                          text: 'ADD',
                                          defalutsize: true,
                                          dsize: 13,
                                          weight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                        onPressed: () {}),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.sp,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Txt(
                                          text: 'Digit',
                                          fsize: 10,
                                          color: Colors.black,
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
                                        const Txt(
                                          text: 'Points',
                                          fsize: 10,
                                          color: Colors.black,
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
                                        const Txt(
                                          text: 'Game Type',
                                          fsize: 10,
                                          color: Colors.black,
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
                                        const Txt(
                                          text: '',
                                          fsize: 12,
                                          color: Colors.black,
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
                              color: Colors.black,
                            ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.sp),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Txt(
                                                text: '121-1',
                                                fsize: 10,
                                                color: Colors.black,
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
                                              const Txt(
                                                text: '122',
                                                fsize: 10,
                                                color: Colors.black,
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
                                              const Txt(
                                                text: 'Open',
                                                fsize: 10,
                                                color: Colors.black,
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
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.sp),
                                                  color: Get
                                                      .theme.primaryColorDark,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsets.all(5.0.sp),
                                                  child: const Txt(
                                                    text: 'DELETE',
                                                    fsize: 8,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              )
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
                              padding: EdgeInsets.symmetric(vertical: 4.sp),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Txt(
                                            text: 'Total',
                                            fsize: 12,
                                            color: Colors.black,
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
                                          const Txt(
                                            text: '1222',
                                            fsize: 12,
                                            color: Colors.black,
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
                                          const Txt(
                                            text: '',
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
                                          const Txt(
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
                        )
                      ],
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
              Container(
                height: kBottomNavigationBarHeight,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.sp),
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoButton(
                            color: Get.theme.primaryColorDark,
                            child: const Txt(
                              text: 'SUBMIT',
                              defalutsize: true,
                              dsize: 13,
                              weight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              )
            ],
          ))
        ],
      ),
    );
  }
}
