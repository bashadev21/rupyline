import 'package:flutter/material.dart';
import 'package:rupyline/screens/auth/pin.dart';
import 'package:rupyline/screens/dashboard/profile/notice_board.dart';
import 'package:rupyline/widgets/profile_tile.dart';
import 'package:get/get.dart';
import '../../widgets/appbar.dart';
import '../../widgets/background.dart';
import '../../widgets/text.dart';
import 'package:sizer/sizer.dart';

import 'profile/change_password.dart';
import 'profile/game_rate.dart';
import 'profile/my_profile.dart';
import 'profile/settings.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGround(),
          Positioned.fill(
              bottom: kBottomNavigationBarHeight,
              child: Column(
                children: [
                  BaseAppBar(
                    carticon: true,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.sp),
                      child: ListView(
                        children: [
                          ProfileTile(
                              ontap: () {
                                Get.to(() => MyProfileView());
                              },
                              text: 'My Profile',
                              image: 'assets/my_profile.png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => SettingsView());
                              },
                              text: 'Settings',
                              image: 'assets/Admin Settings Male.png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => NoticeBoardView());
                              },
                              text: 'Notice Board',
                              image: 'assets/Noticeboard.png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => PinEntry(
                                      text: 'ENTER OLD PIN',
                                      type: 'change',
                                    ));
                              },
                              text: 'Change PIN',
                              image: 'assets/Pin Pad.png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => ChangePass());
                              },
                              text: 'Change Password',
                              image: 'assets/Password (1).png'),
                          ProfileTile(
                              ontap: () {
                                Get.to(() => Gamerate());
                              },
                              text: 'Game Rate',
                              image: 'assets/Star Filled.png'),
                          ProfileTile(
                              ontap: () {},
                              text: 'Logout',
                              image: 'assets/Shutdown.png'),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
