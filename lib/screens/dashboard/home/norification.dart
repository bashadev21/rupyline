import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

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
                title: 'Notification',
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0.sp),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.sp)),
                        child: ListTile(
                            title: Txt(
                              text: '200-1 (SRIDEVI-OPEN)',
                              fsize: 13,
                              color: Get.theme.primaryColorLight,
                            ),
                            subtitle: Txt(
                              text: '12/12/2020 12:25 AM',
                              fsize: 10,
                              color: Get.theme.primaryColor,
                            )),
                      ),
                    );
                  },
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
