import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTextStyle extends StatelessWidget {
  const ButtonTextStyle({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.archivo(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: color,
      ),
    );
  }
}