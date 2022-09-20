import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_application/src/common/constant/colors_constant.dart';
import 'package:login_application/src/common/constant/padding_constants.dart';
import 'package:login_application/src/router/routing_constant.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:transparent_cupertino_navigationbar/transparent_cupertino_navigationbar.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_korea_text.dart';
import '../../common/widgets/custom_line.dart';
import '../../common/widgets/custom_social_icon.dart';
import '../../common/widgets/custom_text.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/custom_top_text_textfield.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

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
                AppColors.black,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('asset/image/anime2.png'),
                const CustomKoreaText(text: 'ひさしぶり!'),
                const CustomTextWidget(color: Colors.white, text: 'Hello, we miss you!', fontWeight: FontWeight.w200, size: 16, letterSpace: 0, textAlign: TextAlign.center,), 
                const SizedBox(height: 20),
                const CustomTopTextTextField(text: 'Login'),
                const SizedBox(height: 5),
                const CustomTextField(placeholder: 'Email'),
                const SizedBox(height: 20),
                const CustomTopTextTextField(text: 'Password'),
                const SizedBox(height: 5),
                const CustomTextField(placeholder: 'Password'),
                const SizedBox(height: 25),
                const CustomButton(text: 'Login'),
                const SizedBox(height: 25),
                // Decorative lines
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomLine(),
                    CustomTextWidget(color: AppColors.white, text: 'User Login Social', fontWeight: FontWeight.normal, size: 16, letterSpace: 1, textAlign: TextAlign.center),
                    CustomLine(),
                  ],
                ),
                const SizedBox(height: 25),
                // Icons row
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
                const SizedBox(height: 25),
                // Question text 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomTextWidget(color: AppColors.white, text: "Don't have an account?", fontWeight: FontWeight.normal, size: 16, letterSpace: 0, textAlign: TextAlign.center),
                    GestureDetector(
                      child: const CustomTextWidget(color: AppColors.purple, text: " Register", fontWeight: FontWeight.normal, size: 16, letterSpace: 0, textAlign: TextAlign.center),
                      onTap: () => Navigator.pushNamed(context, RegisterRoute),
                    ),
                  ],
                )
              ],
            ),
          ),
        ) 
      )
    );
  }
}