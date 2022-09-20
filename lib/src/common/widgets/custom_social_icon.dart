import 'package:flutter/cupertino.dart';

import '../constant/colors_constant.dart';

class CustomSocialWidget extends StatelessWidget {
  const CustomSocialWidget({
    Key? key,
    required this.link,
  }) : super(key: key);

 final String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 51,
      height: 51,
      decoration: BoxDecoration(
        color: AppColors.inActive,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: AppColors.white,
        )
      ),
      child: Image.asset(link),
    );
  }
}