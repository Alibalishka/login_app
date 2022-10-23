import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/colors_constant.dart';
import '../constant/padding_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.placeholder,
    required this.controller,
    required this.isInable,
  }) : super(key: key);

  final String placeholder;
  final TextEditingController controller;
  final bool isInable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CupertinoTextField(
        controller: controller,
        placeholder: placeholder,
        keyboardType: isInable == true ? TextInputType.visiblePassword : TextInputType.emailAddress,
        placeholderStyle:const  TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        style: const  TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        padding: AppPaddings.primary,
        decoration: BoxDecoration(
          color: AppColors.inActive,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}