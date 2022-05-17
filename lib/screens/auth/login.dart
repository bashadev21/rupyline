import 'package:flutter/material.dart';
import 'package:rupyline/screens/auth/signup.dart';
import 'package:rupyline/widgets/auth_button.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../../widgets/auth_text_field.dart';
import 'pin.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController con = TextEditingController();
  final TextEditingController con1 = TextEditingController();
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
              const Txt(
                text: 'Login Your Account',
                fsize: 18,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.sp),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/login_man.png',
                          height: 10.h,
                          width: 10.h,
                        )
                      ],
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
                      controller: con1,
                      ispass: true,
                      isvisible: false,
                      image: 'assets/password.png',
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Txt(
                            text: 'Forgot Password?',
                            fsize: 11,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              AuthButton(
                  ontap: () {
                    Get.to(() => PinEntry());
                  },
                  text: 'LOGIN'),
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
              InkWell(
                onTap: () => Get.to(() => SignupView()),
                child: const Txt(
                  text: 'Create new account',
                  fsize: 12,
                  underline: true,
                ),
              ),
              const Spacer(),
            ],
          ))
        ],
      ),
    );
  }
}
