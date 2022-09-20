import 'package:flutter/material.dart';
import 'package:login_application/src/common/widgets/custom_text.dart';

import '../constant/padding_constants.dart';

class CustomTopTextTextField extends StatelessWidget {
  const CustomTopTextTextField({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal,
      child: CustomTextWidget(color: Colors.white, text: text, fontWeight: FontWeight.normal, size: 14, letterSpace: 0, textAlign: TextAlign.start,),
    );
  }
}