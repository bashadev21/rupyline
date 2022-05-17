import 'package:flutter/material.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class WalletTile extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  WalletTile({Key? key, this.text = '', required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sp),
        child: Container(
          decoration: BoxDecoration(
              color: Get.theme.primaryColor,
              border:
                  Border.all(color: Get.theme.primaryColorDark, width: 2.sp),
              borderRadius: BorderRadius.circular(16.sp)),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Txt(
                  text: text,
                  fsize: 12,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
