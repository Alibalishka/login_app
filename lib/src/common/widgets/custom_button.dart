import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/colors_constant.dart';
import '../constant/padding_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal,
      child: CupertinoButton(
        padding: AppPaddings.primary,
        color: AppColors.purple,
        child: Text(
          text,
          style: GoogleFonts.archivo(
            color: AppColors.inActivePurple,
            fontWeight: FontWeight.bold,
          ),
        ), 
        onPressed: onPressed,
      ),
    );
  }
}