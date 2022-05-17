import 'package:flutter/material.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const AuthButton({Key? key, this.text = '', required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(999), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 6),
          child: Txt(
            defalutsize: true,
            text: text,
            dsize: 20,
            color: Get.theme.primaryColorLight,
          ),
        ),
      ),
    );
  }
}
