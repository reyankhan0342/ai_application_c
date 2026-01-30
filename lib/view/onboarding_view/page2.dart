import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_button1.dart';
import 'package:ai_chat_app/view/onboarding_view/page3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppIcons().sp2, width: 38.w, height: 30.h),
                  SizedBox(width: 5),

                  Text(
                    'ZAP',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                      fontSize: 15.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60.h),
              Container(
                padding: EdgeInsets.all(20),
                child: Image.asset(AppIcons().chatbot, fit: BoxFit.contain),
              ),
              SizedBox(height: 30.h),
              Text(
                'About my capabilities:',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 22.sp,
                  wordSpacing: 5,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'May occasionally generate incorrect information or May produce biased content.May occasionally generate incorrect information or May produce biased content May May occasionally generate incorrect information  or  May produce biased content',

                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),

              Spacer(),
              CustomButton1(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Page3()),
                  );
                },
                title: 'Next',
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
