import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {

  const CustomTextWidget({
    Key? key,
    required this.color,
    required this.text,
    required this.fontWeight,
    required this.size,
    required this.letterSpace,
    required this.textAlign,
  }) : super(key: key);

  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double size;
  final double letterSpace;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        letterSpacing: letterSpace,
      ),
    );
  }
}