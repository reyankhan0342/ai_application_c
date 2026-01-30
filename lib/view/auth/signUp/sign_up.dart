import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/core/state_mangment/SignInProvider/signInProvider.dart';
import 'package:ai_chat_app/core/state_mangment/SignUpProvider/signUpProvider.dart';
import 'package:ai_chat_app/view/auth/signIn/sign_in.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_button2.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHieght = MediaQuery.of(context).size.height;
    print('build ===>>>>');
    return Consumer<SignUpProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: const Color(0xff318CE7),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    'Complete Your Profile',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: screenWidth,
                    height: 230.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppIcons().baccolor),

                        // fit: BoxFit.cover,
                      ),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppIcons().img, width: 100, height: 100),

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
                          controller: provider.nameController,
                        ),

                        const SizedBox(height: 25),
                        AuthCustomTextfield(
                          hintText: 'Enter Your Email',
                          prefcon: Icons.person,
                          controller: provider.emailcontroller,
                        ),

                        const SizedBox(height: 25),

                        AuthCustomTextfield(
                          hintText: 'Password',
                          prefcon: Icons.lock,
                          controller: provider.passwordController,
                          obscureText: provider.isVisable1,
                          suffixIc: Icons.visibility,
                          visibility: () => {
                            provider.visbility(
                              provider.isVisable1 = !provider.isVisable1,
                            ),
                          },
                        ),
                        const SizedBox(height: 25),

                        AuthCustomTextfield(
                          hintText: 'Confirm Password',
                          prefcon: Icons.lock,
                          controller: provider.conformPasswordController,
                          obscureText: provider.isVisable2,
                          suffixIc: Icons.visibility,
                          visibility: () => {
                            provider.visbility2(
                              provider.isVisable2 = !provider.isVisable2,
                            ),
                          },
                        ),

                        SizedBox(height: 100.h),
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
                          title: 'Sign Up',
                          onTap: () {},
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'already have account: ',
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
                                    builder: (context) => SignInScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                'Login',
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

                        // SizedBox(height: 8),
                        // Container(
                        //   width: screenWidth,
                        //   height: 2,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white.withOpacity(0.2),
                        //   ),
                        // ),

                        // SizedBox(height: 48.h),
                        // CustomButton2(
                        //   icon: Icons.fmd_good,
                        //   height: 45.h,
                        //   decoration: BoxDecoration(
                        //     color: Colors.white,

                        //     borderRadius: BorderRadius.circular(10),
                        //     border: Border.all(color: Colors.blue, width: 0.9),

                        //     boxShadow: [
                        //       BoxShadow(
                        //         color: Colors.black.withOpacity(0.08),
                        //         blurRadius: 10,
                        //         spreadRadius: 1,
                        //         offset: const Offset(0, 4),
                        //       ),
                        //     ],
                        //   ),
                        //   title: 'Sign up with Google',
                        // ),
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
