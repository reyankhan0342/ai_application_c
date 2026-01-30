import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/view/auth/signIn/sign_in.dart';
import 'package:ai_chat_app/view/cutom_widget/custom_button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppIcons().sp2),
                  SizedBox(width: 5),
                  Text(
                    'ZAP',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 70.h),
              Container(height: 250, child: Image.asset(AppIcons().chatbot2)),

              SizedBox(height: 50.h),

              Text(
                'My Limitations:',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              Text(
                'May occasionally generate incorrect information or  May produce biased content',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => SignInScreen()),
                  );
                },
                child: Container(
                  width: 120.w,
                  height: 40.h,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '  Get Started',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),

                      Icon(
                        Icons.arrow_right_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
