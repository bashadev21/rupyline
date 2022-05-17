import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:animations/animations.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rupyline/screens/dashboard/history.dart';
import 'package:rupyline/screens/dashboard/wallet.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:upgrader/upgrader.dart';

import '../screens/dashboard/home.dart';
import '../screens/dashboard/profile.dart';
import 'package:iconsax/iconsax.dart';

import 'appbar.dart';

// ignore: must_be_immutable
class BottamBar extends StatefulWidget {
  int currentindex;
  BottamBar({Key? key, required this.currentindex}) : super(key: key);

  @override
  State<BottamBar> createState() => _BottamBarState();
}

class _BottamBarState extends State<BottamBar> {
  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    HistoryView(),
    WalletView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      widget.currentindex = index;

      print(index);
    });
  }

  DateTime? currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
          msg: 'Press back button again to Exit!',
          backgroundColor: Colors.black54);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    Upgrader().clearSavedSettings();
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        extendBody: true,
        // appBar: BaseAppBar(
        //   carticon: false,
        // ),
        // endDrawer: EndDrawerWidget(),
        // drawer: DrawerWidget(),

        body: Stack(
          children: [
            BackGround(),
            UpgradeAlert(
              debugLogging: true,
              showIgnore: false,
              showLater: false,
              canDismissDialog: false,

              // onIgnore: () {
              //   return true;
              // },
              dialogStyle: GetPlatform.isIOS
                  ? UpgradeDialogStyle.cupertino
                  : UpgradeDialogStyle.material,
              // child: PageTransitionSwitcher(
              //   duration: const Duration(milliseconds: 800),
              //   transitionBuilder: (child, animation, secondaryAnimation) =>
              //       FadeThroughTransition(
              //     animation: animation,
              //     secondaryAnimation: secondaryAnimation,
              //     child: child,
              //   ),
              child: _widgetOptions.elementAt(widget.currentindex),
              // ),
            ),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: true,
          backgroundColor: Colors.transparent,
          selectedLabelStyle: TextStyle(
            color: Get.theme.primaryColor,
          ),
          selectedItemColor: Get.theme.primaryColor,
          unselectedLabelStyle: TextStyle(
            color: Get.theme.primaryColor,
          ),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'History',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.wallet_3),
              label: 'Wallet',
            ),
            const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_fill),
              label: 'Profile',
            ),
          ],
          currentIndex: widget.currentindex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
