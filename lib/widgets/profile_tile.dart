import 'package:flutter/material.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProfileTile extends StatelessWidget {
  final String text, image;
  final VoidCallback ontap;
  const ProfileTile(
      {Key? key,
      this.text = '',
      this.image = 'assets/my_profile.png',
      required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      child: InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              color: Get.theme.primaryColor,
              border:
                  Border.all(color: Get.theme.primaryColorDark, width: 2.sp),
              borderRadius: BorderRadius.circular(16.sp)),
          child: Row(
            children: [
              SizedBox(
                width: 10.sp,
              ),
              Image.asset(image, height: 40.sp, width: 40.sp),
              SizedBox(
                width: 10.sp,
              ),
              Txt(
                text: text,
                fsize: 12,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
