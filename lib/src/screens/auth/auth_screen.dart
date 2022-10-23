import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
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
import '../../common/widgets/custom_text_16.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/custom_top_text_textfield.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                Image.asset('asset/image/udzeroMask.png', height: 155,),
                const CustomKoreaText(text: 'ひさしぶり!'),
                const CustomTextWidget16(color: Colors.white, text: 'Hello, we miss you!'), 
                const SizedBox(height: 20),
                const CustomTopTextTextField(text: 'Login'),
                const SizedBox(height: 5),
                CustomTextField(placeholder: 'Email', controller: emailController, isInable: false,),
                const SizedBox(height: 20),
                const CustomTopTextTextField(text: 'Password'),
                const SizedBox(height: 5),
                CustomTextField(placeholder: 'Password', controller: passwordController, isInable: true,),
                const SizedBox(height: 25),
                CustomButton(
                  text: 'Login',
                  onPressed: () {
                    FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
                      Navigator.pushNamed(context, MainRoute);
                    }).onError((error, stackTrace) {
                      log("Error ${error.toString()}");
                    });
                  },
                ),
                const SizedBox(height: 25),
                // Decorative lines
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomLine(),
                    CustomTextWidget16(color: AppColors.white, text: 'User Login Social'),
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
                      CustomSocialWidget(link: 'asset/image/InstagramLogo4x.png'),
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
                    const CustomTextWidget16(color: AppColors.white, text: "Don't have an account?"),
                    GestureDetector(
                      child: const CustomTextWidget16(color: AppColors.purple, text: " Register"),
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