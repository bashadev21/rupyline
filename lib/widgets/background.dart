import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackGround extends StatelessWidget {
  const BackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/background.png',
        fit: BoxFit.cover, height: Get.height, width: Get.width);
  }
}
