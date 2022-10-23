import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget14 extends StatelessWidget {

  const CustomTextWidget14({
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
      textAlign: TextAlign.start,
      style: GoogleFonts.roboto(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}