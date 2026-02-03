import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view_model/signInProvider.dart';
import 'package:ai_chat_app/view/auth/signUp/sign_up_view.dart';
import 'package:ai_chat_app/cutom_widget/custom_button2.dart';
import 'package:ai_chat_app/cutom_widget/custom_textField.dart';
import 'package:ai_chat_app/view/dashboard/main_menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHieght = MediaQuery.of(context).size.height;
    print('build ===>>>>');
    return Consumer<SignInProvider>(
      builder: (context, provider, child) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: const Color(0xff318CE7),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 800.w,
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
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          SizedBox(height: 30.h),

                          Image.asset(AppIcons().img, width: 190, height: 160),

                          Text(
                            'ZAP',
                            style: TextStyle(
                              fontSize: 30.sp,
                              letterSpacing: 8,
                              fontFamily: 'Bauhaus',

                              color: Colors.white,
                              fontWeight: FontWeight.w400,
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
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 11.sp,

                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
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
                              border: Border.all(
                                color: Colors.blue,
                                width: 0.9,
                              ),
                            ),
                            title: 'Sign In ',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => MainMenu()),
                              );
                            },
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Don’t have an account: ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.w500,
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
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.white,
                                    ),
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
                            image: AppIcons().google!,
                            height: 45.h,
                            decoration: BoxDecoration(
                              color: Colors.white,

                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.blue,
                                width: 0.9,
                              ),
                            ),
                            title: 'Sign up with Google ',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
