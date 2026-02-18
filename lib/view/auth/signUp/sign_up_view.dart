import 'dart:developer';

import 'package:ai_chat_app/core/app_route/routes.dart';
import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view_model/signInProvider.dart';
import 'package:ai_chat_app/view_model/signUpProvider.dart';
import 'package:ai_chat_app/view/auth/login/login_view.dart';
import 'package:ai_chat_app/cutom_widget/custom_button2.dart';
import 'package:ai_chat_app/cutom_widget/custom_textField.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});

  final GlobalKey<FormState> _formKeySignUp = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHieght = MediaQuery.of(context).size.height;
    print('build ===>>>>');
    return Consumer<SignUpProvider>(
      builder: (context, provider, child) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: const Color(0xff318CE7),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKeySignUp,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h),
                      Text(
                        'Complete Your Profile',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            wordSpacing: 1.1,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: 220.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppIcons().baccolor),

                            // fit: BoxFit.cover,
                          ),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppIcons().img,
                              width: 133.0.w,
                              height: 125.h,
                            ),
                            SizedBox(height: 5),

                            Text(
                              'ZAP',
                              style: TextStyle(
                                fontSize: 30.sp,
                                color: Colors.white,
                                letterSpacing: 5,
                                fontFamily: 'Bauhaus',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 5.h),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Column(
                          children: [
                            AuthCustomTextfield(
                              hintText: "Enter Username",
                              controller: provider.nameController,
                              keyboardType: TextInputType.emailAddress,
                              focusNode: provider.userNameFocusNode,
                              nextFocus: provider.emailFocusNode,
                              onChanged: (value) {
                                print("Email changed: $value");
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Username is Requreid ";
                                }

                                ;
                              },
                              prefcon: Icons.person,
                            ),

                            SizedBox(height: 15.h),
                            AuthCustomTextfield(
                              hintText: 'Enter Your Email',
                              prefcon: Icons.email,
                              focusNode: provider.emailFocusNode,
                              nextFocus: provider.passwordFocusNode,
                              controller: provider.emailcontroller,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Email is Requreid ";
                                }
                                if (value.contains("@.com")) {
                                  return "Invalid Email ";
                                }

                                ;
                                onChanged:
                                (value) {
                                  print("Email changed: $value");
                                };
                              },
                            ),

                            SizedBox(height: 15.h),

                            AuthCustomTextfield(
                              hintText: 'Password',
                              prefcon: Icons.lock,
                              controller: provider.passwordController,
                              obscureText: provider.isVisable1,
                              focusNode: provider.passwordFocusNode,
                              nextFocus: provider.conformFocusNode,
                              suffixIc: provider.isVisable1
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              visibility: () => {
                                provider.visbility(
                                  provider.isVisable1 = !provider.isVisable1,
                                ),
                              },
                              onChanged: (value) {
                                print("Password changed: $value");
                              },
                              validator: (value) {
                                if (value == null || value!.isEmpty) {
                                  return "Password Requreid ";
                                }
                              },
                            ),
                            SizedBox(height: 15.h),

                            AuthCustomTextfield(
                              hintText: 'Confirm Password',
                              prefcon: Icons.lock,
                              controller: provider.conformPasswordController,
                              obscureText: provider.isVisable2,
                              focusNode: provider.conformFocusNode,
                              suffixIc: provider.isVisable2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              visibility: () => {
                                provider.visbility2(
                                  provider.isVisable2 = !provider.isVisable2,
                                ),
                              },

                              onChanged: (value) {
                                log("conform  changed: $value");
                              },
                              validator: (value) {
                                if (provider.conformPasswordController.text
                                        .trim()
                                        .toString() !=
                                    provider.passwordController.text
                                        .trim()
                                        .toString()) {
                                  return "Confirm Password ";
                                }
                              },
                            ),
                            SizedBox(height: 40.w),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              child: CustomButton2(
                                width: screenWidth,
                                loading: provider.loading,
                                height: 50.h,
                                title: "Sigin Up",

                                onTap: () async {
                                  if (_formKeySignUp.currentState!.validate()) {
                                    await provider.userRegister(context);
                                  }
                                  // print("Button tapped");
                                },
                              ),
                            ),

                            SizedBox(height: 20.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'already have account:',
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontSize: 13.sp,
                                      color: Colors.white.withOpacity(0.7),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.go(RouteNames.signInView);
                                  },
                                  child: Text(
                                    'Login',
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                      ),
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
            ),
          ),
        );
      },
    );
  }
}
