import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_application/src/common/widgets/custom_korea_text.dart';
import 'package:login_application/src/router/routing_constant.dart';
import 'package:transparent_cupertino_navigationbar/transparent_cupertino_navigationbar.dart';
import '../../common/constant/colors_constant.dart';
import '../../common/constant/padding_constants.dart';
import '../../common/widgets/custom_button.dart';
import '../../common/widgets/custom_line.dart';
import '../../common/widgets/custom_social_icon.dart';
import '../../common/widgets/custom_text_16.dart';
import '../../common/widgets/custom_textfield.dart';
import '../../common/widgets/custom_top_text_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();
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
                    Image.asset('asset/image/mask.png', height: 100,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CustomKoreaText(text: 'ようこそ!'),
                        CustomTextWidget16(color: AppColors.white, text: 'Welcome to)!'),
                      ],
                    )
                  ]
                ),
                const SizedBox(height: 25),
                const CustomTopTextTextField(text: 'Login'),
                const SizedBox(height: 5),
                CustomTextField(placeholder: 'Email', controller:  emailController, isInable: false,),
                const SizedBox(height: 25),
                const CustomTopTextTextField(text: 'Password'),
                const SizedBox(height: 5),
                CustomTextField(placeholder: 'Password', controller: passwordController, isInable: true,),
                const SizedBox(height: 25),
                const CustomTopTextTextField(text: 'Confirm Password'),
                const SizedBox(height: 5),
                CustomTextField(placeholder: 'Password', controller: checkPasswordController, isInable: true,),
                const SizedBox(height: 25),
                CustomButton(text: 'Register', onPressed: (){
                  if(passwordController.text == checkPasswordController.text){
                    FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) {
                      log('Account create');
                      Navigator.pushNamed(context, MainRoute);
                    }).onError((error, stackTrace) {
                      log("Error ${error.toString()}");
                    });
                  }else{
                    log("password incorrect");
                  }

                }),
                const SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomLine(),
                    CustomTextWidget16(color: AppColors.white, text: 'User Register Social'),
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
                    const CustomTextWidget16(color: AppColors.white, text: "Already a member?"),
                    GestureDetector(
                      child: const CustomTextWidget16(color: AppColors.purple, text: " Login"),
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