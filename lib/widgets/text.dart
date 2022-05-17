import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Txt extends StatelessWidget {
  final String text;
  final double fsize;
  final FontWeight weight;
  final int lines;
  final Color color;
  final bool defalutsize;
  final double dsize;
  final bool underline;
  final bool iscenter;
  const Txt(
      {Key? key,
      this.text = '',
      this.fsize = 16,
      this.iscenter = false,
      this.lines = 1000,
      this.underline = false,
      this.dsize = 18,
      this.color = Colors.white,
      this.defalutsize = false,
      this.weight = FontWeight.w700})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
      textAlign: iscenter ? TextAlign.center : TextAlign.start,
      style: GoogleFonts.lato(
          textStyle: TextStyle(
              fontSize: defalutsize ? dsize : fsize.sp,
              fontWeight: weight,
              color: color,
              height: 1.2,
              decoration:
                  underline ? TextDecoration.underline : TextDecoration.none,
              letterSpacing: .7)),
    );
  }
}
