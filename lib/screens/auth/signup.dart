import 'package:flutter/material.dart';

import '../../widgets/auth_button.dart';
import '../../widgets/auth_text_field.dart';
import '../../widgets/background.dart';
import '../../widgets/text.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);
  final TextEditingController con = TextEditingController();
  final TextEditingController con1 = TextEditingController();
  final TextEditingController con2 = TextEditingController();
  final TextEditingController con3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(),
          Positioned.fill(
              child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/rupy_logo.png',
                height: 18.h,
                width: 18.h,
              ),
              const Spacer(),
              const Txt(
                text: 'Account Registration',
                fsize: 18,
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.sp),
                child: Column(
                  children: [
                    ATextField(
                      label: 'Your Name',
                      controller: con,
                      image: 'assets/profile.png',
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    ATextField(
                      label: 'Mobile Number',
                      controller: con,
                      image: 'assets/call.png',
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    ATextField(
                      label: 'Password',
                      controller: con2,
                      ispass: true,
                      isvisible: false,
                      image: 'assets/password.png',
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    ATextField(
                      label: 'Confirm Password',
                      controller: con3,
                      ispass: true,
                      isvisible: false,
                      image: 'assets/password.png',
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 12.h,
                  ),
                  AuthButton(ontap: () {}, text: 'SIGN UP'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/signup_man.png',
                        height: 12.h,
                        width: 12.h,
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.sp),
                    child: const Txt(
                      text: 'OR',
                      fsize: 10,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Txt(
                    text: 'Already have an account?',
                    fsize: 12,
                  ),
                  InkWell(
                    onTap: () => Get.back(),
                    child: const Txt(
                      text: ' Login here.',
                      fsize: 12,
                      underline: true,
                    ),
                  ),
                ],
              ),
              const Spacer(),
            ],
          ))
        ],
      ),
    );
  }
}
