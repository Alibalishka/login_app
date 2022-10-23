import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget35 extends StatelessWidget {

  const CustomTextWidget35({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  final String text;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: 35,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    );
  }
}