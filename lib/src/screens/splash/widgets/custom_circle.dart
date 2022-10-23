import 'package:flutter/cupertino.dart';

import '../../../common/constant/colors_constant.dart';

class CustomCircle extends StatelessWidget {
  const CustomCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 315,
      decoration: const BoxDecoration(
        color: AppColors.pink,
        shape: BoxShape.circle,
      ),
    );
  }
}