import 'package:flutter/material.dart';
import 'package:rupyline/widgets/appbar.dart';
import 'package:rupyline/widgets/background.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

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
                title: 'Admin',
              ),
              Expanded(
                child: Container(
                  color: Get.theme.primaryColor,
                  child: Stack(
                    children: [
                      Center(
                        child: Image.asset('assets/rupy_logo.png',
                            height: 30.h, width: 30.h, fit: BoxFit.cover),
                      ),
                      Positioned.fill(
                        child: ListView(
                          children: const [
                            ChatBubble(
                              text: 'How was the concert?',
                              isCurrentUser: false,
                            ),
                            ChatBubble(
                              text:
                                  'Awesome! Next time you gotta come as well!',
                              isCurrentUser: true,
                            ),
                            ChatBubble(
                              text: 'Ok, when is the next date?',
                              isCurrentUser: false,
                            ),
                            ChatBubble(
                              text: 'They\'re playing on the 20th of November',
                              isCurrentUser: true,
                            ),
                            ChatBubble(
                              text: 'Let\'s do it!',
                              isCurrentUser: false,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                  color: Get.theme.primaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(8.0.sp),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(999),
                            borderSide: BorderSide(
                              color: Get.theme.primaryColorLight,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(999),
                            borderSide: BorderSide(
                              color: Get.theme.primaryColorLight,
                            ),
                          ),
                          hintText: 'TYPE HERE',
                          contentPadding: EdgeInsets.all(13),
                          hintStyle:
                              TextStyle(color: Get.theme.primaryColorLight)),
                    ),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    Key? key,
    required this.text,
    required this.isCurrentUser,
  }) : super(key: key);
  final String text;
  final bool isCurrentUser;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // asymmetric padding
      padding: EdgeInsets.fromLTRB(
        isCurrentUser ? 64.0 : 16.0,
        4,
        isCurrentUser ? 16.0 : 64.0,
        4,
      ),
      child: Align(
        // align the child within the container
        alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
        child: DecoratedBox(
          // chat bubble decoration
          decoration: BoxDecoration(
            color: isCurrentUser ? Colors.blue : Colors.grey[300],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: isCurrentUser ? Colors.white : Colors.black87),
            ),
          ),
        ),
      ),
    );
  }
}
