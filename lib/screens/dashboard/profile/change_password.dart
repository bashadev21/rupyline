import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/auth_button.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/auth_text_field.dart';

class ChangePass extends StatelessWidget {
  ChangePass({Key? key}) : super(key: key);
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
                title: 'Change Password',
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.sp),
                  child: ListView(
                    children: [
                      ATextField(
                        label: 'Old Password',
                        controller: _con,
                        ispass: true,
                        isvisible: false,
                        image: 'assets/password.png',
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      ATextField(
                        label: 'New Password',
                        controller: _con,
                        ispass: true,
                        isvisible: false,
                        image: 'assets/password.png',
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      ATextField(
                        label: 'Confirm Password',
                        controller: _con,
                        ispass: true,
                        isvisible: false,
                        image: 'assets/password.png',
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AuthButton(
                            ontap: () {},
                            text: 'Change Password',
                          ),
                        ],
                      )
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
