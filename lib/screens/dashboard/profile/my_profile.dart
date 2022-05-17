import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import '../../../widgets/text_field.dart';
import 'package:get/get.dart';

class MyProfileView extends StatelessWidget {
  MyProfileView({Key? key}) : super(key: key);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          BackGround(),
          Positioned.fill(
              child: Column(
            children: [
              BaseAppBar(
                backicon: true,
                title: 'My Profile',
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.sp),
                  child: ListView(
                    children: [
                      const Txt(
                        text: 'First Name',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your name',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'Email ID',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter  your mail ID',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'Mobile Number',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your mobile number',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'Bank Account No',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your account number',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'IFSC Code',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your IFSC',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'Bank Name',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your bank name',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'PayTM Number',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your payTM number',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'PhonePe Number',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your phonepe number',
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      const Txt(
                        text: 'Google Pay Number',
                        fsize: 15,
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      CTextField(
                        controller: _controller,
                        label: 'Enter your google pay number',
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.sp, vertical: 8.sp),
                              child: const Txt(
                                text: 'UPDATE',
                                fsize: 12,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Get.theme.primaryColor,
                                border: Border.all(
                                    color: Get.theme.primaryColorDark,
                                    width: 2.sp),
                                borderRadius: BorderRadius.circular(16.sp)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.sp,
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
