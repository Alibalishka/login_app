import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_application/src/common/constant/colors_constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_application/src/common/constant/padding_constants.dart';
import 'package:login_application/src/router/routing_constant.dart';

import '../../common/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: AppColors.primary,
        
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
                Colors.black,
              ],
            ),
          ),
          child: Column(
            children: [              
              Stack(
                children: [
                  const SizedBox(
                    height: 405,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 315,
                      height: 315,
                      decoration: const BoxDecoration(
                        color: AppColors.pink,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: Image.asset('asset/image/anime.png'),
                  ),
                ],
              ),  
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomTextWidget(text: 'anime', color: Colors.white, fontWeight: FontWeight.bold, size: 35, letterSpace: 2, textAlign: TextAlign.center),
                  CustomTextWidget(text: 'yabu.', color: AppColors.primary, fontWeight: FontWeight.bold, size: 35, letterSpace: 2, textAlign: TextAlign.center),
                ],
              ),
              const SizedBox(height: 10),
              const CustomTextWidget(color: Colors.white, text: 'Watch anime online in HD, subtitled or  dubbed, \n on your  cell phone or computer. Animeyabu, \n your online anime portal!', fontWeight: FontWeight.normal, size: 16, letterSpace: 0, textAlign: TextAlign.center ),
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
              const CustomTextWidget(color: AppColors.pink, text: 'Developed by TA', fontWeight: FontWeight.normal, size: 16, letterSpace: 0, textAlign: TextAlign.center,),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith((states) => Colors.black12),
        ),
        child: ButtonTextStyle(text: buttonName, color: textColor,), 
        onPressed: onPressed,
      ),
    );
  }
}

class ButtonTextStyle extends StatelessWidget {
  const ButtonTextStyle({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.archivo(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: color,
      ),
    );
  }
}