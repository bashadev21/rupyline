import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';
import '../screens/dashboard/history/transaction_history.dart';
import 'text.dart';
import '../screens/dashboard/home/norification.dart';
import 'package:url_launcher/url_launcher.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool center;
  final bool backicon;
  final bool carticon;
  final bool ismoreicon;
  final VoidCallback ontap;
  static _defaultFunction() {
    Get.back();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  BaseAppBar(
      {Key? key,
      this.title = 'RUPYLINE',
      this.center = false,
      this.backicon = false,
      this.ontap = _defaultFunction,
      this.ismoreicon = false,
      this.carticon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    openwhatsapp(num) async {
      var whatsapp = "+91$num";
      var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=";
      var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
      if (Platform.isIOS) {
        // for iOS phone only
        if (await canLaunch(whatappURL_ios)) {
          await launch(whatappURL_ios, forceSafariVC: false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: new Text("whatsapp no installed")));
        }
      } else {
        // android , web
        if (await canLaunch(whatsappURl_android)) {
          await launch(whatsappURl_android);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: new Text("whatsapp no installed")));
        }
      }
    }

    return AppBar(
      elevation: 0,
      centerTitle: center,
      title: InkWell(
        onTap: () {},
        child: Txt(
          text: title,
          color: Colors.white,
          weight: FontWeight.bold,
          defalutsize: true,
        ),
      ),
      actions: [
        carticon
            ? Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(() => NotificationView());
                      },
                      icon: Icon(Iconsax.notification5)),
                  IconButton(
                      onPressed: () {
                        Get.to(() => TransactionDetails());
                      },
                      icon: Icon(Iconsax.wallet_35)),
                  InkWell(
                      onTap: () {
                        openwhatsapp(7904941100);
                      },
                      child: Image.asset('assets/WhatsApp.png')),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            : SizedBox()
      ],
      leading: backicon
          ? InkWell(
              onTap: ontap,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('assets/back_arrow.png'),
              ))
          : null,
      backgroundColor: Colors.transparent,
    );
  }
}
