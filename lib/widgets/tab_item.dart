import 'package:flutter/material.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';

class TabItem extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const TabItem({Key? key, required this.text, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Stack(
        children: [
          Image.asset(
            'assets/Rectangle 21.png',
            height: 10.h,
            width: 30.w,
          ),
          Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: Txt(
                  text: text,
                  iscenter: true,
                  fsize: 7,
                )),
          ),
        ],
      ),
    );
  }
}
