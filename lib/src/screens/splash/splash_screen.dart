import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_application/src/common/constant/colors_constant.dart';
import 'package:login_application/src/common/constant/padding_constants.dart';
import 'package:login_application/src/router/routing_constant.dart';
import 'package:login_application/src/screens/splash/widgets/custom_circle.dart';
import 'package:login_application/src/screens/splash/widgets/custom_image.dart';

import '../../common/widgets/custom_text_16.dart';
import '../../common/widgets/custom_text_35.dart';
import 'widgets/custom_text_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
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
                Colors.black,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [   
              const Spacer(),           
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: const [
                  CustomCircle(),
                  CustomImage(url: 'asset/image/udzero.png'),
                ],
              ),  
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomTextWidget35(text: 'anime', color: Colors.white),
                  CustomTextWidget35(text: 'yabu.', color: AppColors.primary),
                ],
              ),
              const SizedBox(height: 10),
              const CustomTextWidget16(color: Colors.white, text: 'Watch anime online in HD, subtitled or  dubbed, \n on your  cell phone or computer. Animeyabu, \n your online anime portal!' ),
              const SizedBox(height: 40),
              Padding(
                padding: AppPaddings.horizontal,
                child: Container(
                  width: 343,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.gray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTextButton(
                          buttonName: 'Login', 
                          bgColor: AppColors.pink, 
                          textColor: AppColors.inActivePurple,
                          onPressed: () => Navigator.pushNamed(context, AuthRoute),
                        ),
                      ),
                      Expanded(
                        child: CustomTextButton(
                          buttonName: 'Register', 
                          bgColor: AppColors.gray, 
                          textColor: Colors.white,
                          onPressed: () => Navigator.pushNamed(context, RegisterRoute),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              const CustomTextWidget16(color: AppColors.pink, text: 'Developed by TA'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
