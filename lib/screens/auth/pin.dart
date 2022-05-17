import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/bottom_navigation.dart';

class PinEntry extends StatelessWidget {
  final String text;
  final String type;
  PinEntry({Key? key, this.text = 'CREATE YOUR PIN', this.type = ''})
      : super(key: key);

  final TextEditingController otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackGround(),
          Positioned.fill(
              top: 10.h,
              bottom: 10.h,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(
                              color: Get.theme.primaryColorLight, width: 2)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.sp, vertical: 6.sp),
                        child: Txt(
                          text: text,
                          fsize: 13,
                          color: Get.theme.primaryColorLight,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.sp),
                      child: PinPut(
                          controller: otp,
                          onChanged: (o) {
                            if (o.length == 4) {
                              if (type == '') {
                                Get.offAll(() => BottamBar(
                                      currentindex: 0,
                                    ));
                              } else if (type == 'change') {
                                Get.offAll(() => PinEntry());
                              }

                              FocusScope.of(context)
                                  .requestFocus(new FocusNode());
                            }
                          },
                          eachFieldPadding: const EdgeInsets.all(10),
                          eachFieldHeight: 40.sp,
                          eachFieldWidth: 40.sp,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          ],
                          textStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Get.theme.primaryColor,
                                  letterSpacing: .8)),
                          followingFieldDecoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(200)),
                          keyboardType: TextInputType.number,
                          submittedFieldDecoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(200)),
                          selectedFieldDecoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(200)),
                          fieldsCount: 4),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Image.asset(
                      'assets/waving hello girl.png',
                      height: 12.h,
                      width: 12.h,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
