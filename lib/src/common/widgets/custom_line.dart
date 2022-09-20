import 'package:flutter/cupertino.dart';

import '../constant/colors_constant.dart';
import '../constant/padding_constants.dart';

class CustomLine extends StatelessWidget {
  const CustomLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.horizontal,
      child: Container(width: MediaQuery.of(context).size.width * 0.2, height: 2, color: AppColors.white,),
    );
  }
}