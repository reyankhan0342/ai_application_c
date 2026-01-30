import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_button1.dart';
import 'package:ai_chat_app/view/onboarding_view/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppIcons().sp2, width: 38.w, height: 30.h),
                  SizedBox(width: 5),
                  Text(
                    'ZAP',
                    style: GoogleFonts.aboreto(
                      textStyle: TextStyle(
                        fontSize: 20,
                        color: AppColor().blue,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 80.h),

              Container(
                width: 700.w,
                height: 340.h,

                child: Image.asset(AppIcons().chatbot),
              ),

              Text(
                'Hi! I’m Zap ',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'An AI-powered chatbot. ',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                textAlign: TextAlign.center,
              ),

              Spacer(),

              CustomButton1(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Page2()),
                  );
                },
                title: 'Next',
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
