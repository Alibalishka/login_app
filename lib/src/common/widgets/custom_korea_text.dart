import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomKoreaText extends StatelessWidget {
  const CustomKoreaText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
    
    );
  }
}