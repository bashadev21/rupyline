import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:rupyline/widgets/text.dart';
import 'package:get/get.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

bool ismain = false;
bool ismaingame = false;
bool isstarline = false;
bool isjackpot = false;

class _SettingsViewState extends State<SettingsView> {
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
                title: 'Settings',
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      trailing: Switch(
                        value: ismain,
                        onChanged: (bool isOn) {
                          ismain = isOn;
                          print(isOn);
                          setState(() {});
                        },
                        activeColor: Get.theme.primaryColor,
                        inactiveTrackColor: Colors.grey[400],
                        inactiveThumbColor: Get.theme.primaryColor,
                      ),
                      title: Txt(
                        text: 'Main notification',
                        fsize: 11,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      trailing: Switch(
                        value: ismaingame,
                        onChanged: (bool isOn) {
                          ismaingame = isOn;
                          print(isOn);
                          setState(() {});
                        },
                        activeColor: Get.theme.primaryColor,
                        inactiveTrackColor: Colors.grey[400],
                        inactiveThumbColor: Get.theme.primaryColor,
                      ),
                      title: Txt(
                        text: 'Main game notification',
                        fsize: 11,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      trailing: Switch(
                        value: ismain,
                        onChanged: (bool isOn) {
                          ismain = isOn;
                          print(isOn);
                          setState(() {});
                        },
                        activeColor: Get.theme.primaryColor,
                        inactiveTrackColor: Colors.grey[400],
                        inactiveThumbColor: Get.theme.primaryColor,
                      ),
                      title: Txt(
                        text: 'Starline notification',
                        fsize: 11,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                    ListTile(
                      trailing: Switch(
                        value: ismain,
                        onChanged: (bool isOn) {
                          ismain = isOn;
                          print(isOn);
                          setState(() {});
                        },
                        activeColor: Get.theme.primaryColor,
                        inactiveTrackColor: Colors.grey[400],
                        inactiveThumbColor: Get.theme.primaryColor,
                      ),
                      title: Txt(
                        text: 'Jackpot notification',
                        fsize: 11,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 0.5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
