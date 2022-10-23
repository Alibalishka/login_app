import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text_button_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith((states) => Colors.black12),
        ),
        child: ButtonTextStyle(text: buttonName, color: textColor,), 
        onPressed: onPressed,
      ),
    );
  }
}