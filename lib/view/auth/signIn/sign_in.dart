import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/core/state_mangment/SignInProvider/signInProvider.dart';
import 'package:ai_chat_app/view/auth/signUp/sign_up.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_button2.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_textField.dart';
import 'package:ai_chat_app/view/dashboard/main_menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHieght = MediaQuery.of(context).size.height;
    print('build ===>>>>');
    return Consumer<SignInProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: const Color(0xff318CE7),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 700,
                    height: 320.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppIcons().baccolor),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 30.h),

                        Image.asset(AppIcons().img, width: 180, height: 150),

                        Text(
                          'ZAP',
                          style: TextStyle(
                            fontSize: 25.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43),
                    child: Column(
                      children: [
                        AuthCustomTextfield(
                          hintText: 'Enter Your Name',
                          prefcon: Icons.person,
                          controller: provider.emailController,
                        ),

                        const SizedBox(height: 25),

                        AuthCustomTextfield(
                          hintText: 'Password',
                          prefcon: Icons.lock,
                          controller: provider.passwordController,
                          obscureText: provider.isPasswordVisible,
                          suffixIc: Icons.visibility,
                          visibility: () => {
                            provider.passwordVisbility(
                              provider.isPasswordVisible =
                                  !provider.isPasswordVisible,
                            ),
                          },
                        ),

                        SizedBox(height: 7),

                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Forget Password',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        SizedBox(height: 17),
                        CustomButton2(
                          height: 45.h,
                          width: screenWidth,

                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue, width: 0.9),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          title: 'Sign In ',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => MainMenu()),
                            );
                          },
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t have an account: ',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.7),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 8),
                        Container(
                          width: screenWidth,
                          height: 2,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),

                        SizedBox(height: 48.h),
                        CustomButton2(
                          icon: Icons.fmd_good,
                          height: 45.h,
                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.blue, width: 0.9),

                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          title: 'Sign up with Google',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
