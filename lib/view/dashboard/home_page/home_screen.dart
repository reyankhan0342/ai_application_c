// ignore_for_file: deprecated_member_use

import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:ai_chat_app/view/cutom_widget/home_custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 32, height: 33),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Lesa',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6),
              Text(
                'Let’s see what I can do for you?',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 19),

              Row(
                children: [
                  Container(
                    width: 170.w,
                    height: 185.h,
                    decoration: BoxDecoration(
                      color: Color(0XFF2B89DD),
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            child: Image.asset(AppIcons().record, width: 28),
                          ),

                          SizedBox(height: 23.h),
                          Text(
                            'let’s find new things using voice recording',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 13.h),
                          Flexible(
                            child: Container(
                              alignment: Alignment.center,
                              width: 100.w,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.blueAccent,
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                'Start Recording ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 25.w),
                  Column(
                    children: [
                      Container(
                        width: 140.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          color: Color(0XFF2B89DD),
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 37,
                                height: 37,

                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: Image.asset(AppIcons().mes, width: 25),
                              ),

                              SizedBox(height: 8.h),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Start New \n Chat',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.0),
                                      child: Image.asset(
                                        AppIcons().arrow,
                                        width: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        width: 140.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          color: Color(0XFF2B89DD),
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 37,
                                height: 37,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                child: Image.asset(AppIcons().i23, width: 25),
                              ),

                              SizedBox(height: 8.h),
                              Flexible(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Search By \n Image',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.0),
                                      child: Image.asset(
                                        AppIcons().arrow,
                                        width: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 25.h),
              Text(
                'Explore ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 19.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCustomCard(
                    title: 'Code',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().code,
                  ),
                  HomeCustomCard(
                    title: 'Check Grammar',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().i4,
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCustomCard(
                    title: 'Content',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().i5,
                  ),
                  HomeCustomCard(
                    title: 'Mail ',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().mail,
                  ),
                ],
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCustomCard(
                    title: 'Essay',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().i7,
                  ),
                  HomeCustomCard(
                    title: 'Translator',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().i8,
                  ),
                ],
              ),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCustomCard(
                    title: 'Story Creator',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().i14,
                  ),
                  HomeCustomCard(
                    title: 'Text condenser',
                    description:
                        'Write Programming code or algorithm for complex applications.',
                    icon: AppIcons().i15,
                  ),
                ],
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
