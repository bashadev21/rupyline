import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class FTextField extends StatelessWidget {
  final String hint, prefix, label, image;
  final int max;
  final bool suffixicon;
  final bool enabled;
  final TextInputType keyboard;
  final bool isprefix;
  final bool ispreicon;
  final IconData preicon;
  final bool ispass;
  final bool isvisible;
  final bool istheme;
  final double padd;
  final bool obs;
  final bool islabel;
  final VoidCallback passontap;
  final ValueChanged onchage;
  final TextEditingController controller;
  static _defaultFunction() {}
  static _onchageFunction(o) {}
  const FTextField(
      {Key? key,
      this.hint = '',
      this.prefix = '',
      this.padd = 14,
      this.obs = false,
      this.enabled = true,
      this.suffixicon = false,
      this.image = '',
      this.istheme = false,
      this.label = '',
      this.ispass = false,
      this.isvisible = false,
      this.passontap = _defaultFunction,
      this.onchage = _onchageFunction,
      this.preicon = Icons.person,
      this.ispreicon = false,
      this.isprefix = false,
      this.islabel = false,
      this.max = 500,
      required this.controller,
      this.keyboard = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        border: Border.all(color: Colors.transparent, width: 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 55,
            decoration: BoxDecoration(
              color: Get.theme.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Expanded(
            child: TextField(
              obscureText: obs ? true : false,
              focusNode: enabled ? FocusNode() : AlwaysDisabledFocusNode(),
              controller: controller,
              keyboardType: keyboard,
              inputFormatters: <TextInputFormatter>[
                if (max == 10 || max == 6 || max == 3)
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              maxLength: max,
              cursorColor: Colors.white,
              cursorWidth: 2,
              onChanged: _onchageFunction,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Get.theme.primaryColor,
                      letterSpacing: .8)),
              decoration: InputDecoration(
                suffixIcon: ispass
                    ? InkWell(
                        onTap: passontap,
                        child: Icon(
                          !isvisible ? Icons.visibility_off : Icons.visibility,
                          color: Colors.white,
                        ))
                    : null,
                counterText: '',
                fillColor: Colors.transparent,
                filled: true,
                floatingLabelBehavior: islabel
                    ? FloatingLabelBehavior.never
                    : FloatingLabelBehavior.never,
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: Colors.white,
                        letterSpacing: .8)),
                hintText: label,
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                contentPadding: EdgeInsets.all(13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
