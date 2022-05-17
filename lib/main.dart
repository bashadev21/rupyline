import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:sizer/sizer.dart';

import 'screens/dashboard/home.dart';
import 'screens/spalsh.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = MyHttpOverrides();

  await GetStorage.init();
  runApp(const MyApp());
  // Get.put(InitCon());
  // Get.put(AuthCon());
  // Get.put(FormsCon());
  // Get.put(ZoomCon());

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        defaultTransition: Transition.cupertino,
        title: 'Rupy-Line',
        themeMode: ThemeMode.light,
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: Colors.white,
            primaryColorLight: const Color(0xFFC70000),
            primaryColorDark: const Color(0xFFF3B135),
            primaryColor: const Color(0xFF194678)),
        // home: GetStorage().read('userid').toString() == 'null'
        //     ? WelcomeScreen()
        //     : BottamBar(currentindex: 0),
        home: SplashView(),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
