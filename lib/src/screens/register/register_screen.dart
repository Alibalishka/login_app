import 'package:flutter/cupertino.dart';
import 'package:login_application/src/common/widgets/custom_korea_text.dart';
import 'package:login_application/src/common/widgets/custom_text.dart';
import 'package:login_application/src/router/routing_constant.dart';
import 'package:transparent_cupertino_navigationbar/transparent_cupertino_navigationbar.dart';

import '../../common/constant/colors_constant.dart';
import '../../common/constant/padding_constants.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_line.dart';
import '../../common/widgets/custom_social_icon.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/custom_top_text_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const TransparentCupertinoNavigationBar(
        backgroundColor: AppColors.primary,
        actionsForegroundColor: AppColors.white,
        border: Border(),
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primary,
                AppColors.black
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Image.asset('asset/image/animeMask.png'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomKoreaText(text: 'ようこそ!'),
                        CustomTextWidget(color: AppColors.white, text: 'Welcome to)!', fontWeight: FontWeight.w300, size: 16, letterSpace: 0, textAlign: TextAlign.center),
                      ],
                    )
                  ]
                ),
                const SizedBox(height: 25),
                const CustomTopTextTextField(text: 'Login'),
                const SizedBox(height: 5),
                const CustomTextField(placeholder: 'Email'),
                const SizedBox(height: 25),
                const CustomTopTextTextField(text: 'Password'),
                const SizedBox(height: 5),
                const CustomTextField(placeholder: 'Password'),
                const SizedBox(height: 25),
                const CustomTopTextTextField(text: 'Confirm Password'),
                const SizedBox(height: 5),
                const CustomTextField(placeholder: 'Password'),
                const SizedBox(height: 25),
                const CustomButton(text: 'Register'),
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomLine(),
                    CustomTextWidget(color: AppColors.white, text: 'User Register Social', fontWeight: FontWeight.normal, size: 16, letterSpace: 1, textAlign: TextAlign.center),
                    CustomLine(),
                  ],
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: AppPaddings.horizontalSocial,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      CustomSocialWidget(link: 'asset/image/InstagramLogo.png'),
                      CustomSocialWidget(link: 'asset/image/TwitterLogo.png'),
                      CustomSocialWidget(link: 'asset/image/FacebookLogo.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomTextWidget(color: AppColors.white, text: "Already a member?", fontWeight: FontWeight.normal, size: 16, letterSpace: 0, textAlign: TextAlign.center),
                    GestureDetector(
                      child: const CustomTextWidget(color: AppColors.purple, text: " Login", fontWeight: FontWeight.normal, size: 16, letterSpace: 0, textAlign: TextAlign.center),
                      onTap: () => Navigator.pushNamed(context, AuthRoute),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}