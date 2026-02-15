// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/view_model/home_provider.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:ai_chat_app/cutom_widget/home_custom_card.dart';
import 'package:ai_chat_app/view/dashboard/home/recording/voice_speach_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final model = Provider.of<MainMnuprovider>(context, listen: false);
    return Consumer<HomeProvider>(
      builder: (BuildContext context, provider, Widget? child) {
        return Scaffold(
          body: provider.selectedIndex == 1
              ? VoiceSpeachView()
              : Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.h),
                          Text(
                            'Hi, Lesa',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Let’s see what I can do for you?',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          SizedBox(height: 10.h),

                          Row(
                            children: [
                              Container(
                                width: 170.w,
                                height: 185.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(AppIcons().bg),
                                    fit: BoxFit.cover,
                                  ),
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
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 25.w,
                                        height: 25.w,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                        child: Image.asset(
                                          AppIcons().record,
                                          width: 17.w,
                                        ),
                                      ),

                                      SizedBox(height: 12.h),
                                      Text(
                                        'let’s find new \n things using \n voice recording',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 13.h),
                                      GestureDetector(
                                        onTap: () async {
                                          log(' start recording tap ===>>>>> ');
                                          await model.changeScreen(4);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          width: 120.w,
                                          height: 35.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            border: Border.all(
                                              color: Colors.blueAccent,
                                              width: 1,
                                            ),
                                          ),
                                          child: Text(
                                            'Start Recording ',
                                            style: GoogleFonts.roboto(
                                              textStyle: TextStyle(
                                                fontSize: 12.sp,
                                                color: Colors.blueAccent,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      await model.changeScreen(5);
                                    },
                                    child: Container(
                                      width: 140.w,
                                      height: 90.h,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(AppIcons().bg),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(9),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.08,
                                            ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              width: 25,
                                              height: 25,

                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.withOpacity(
                                                  0.5,
                                                ),
                                              ),
                                              child: Image.asset(
                                                AppIcons().mes,
                                                width: 17.w,
                                              ),
                                            ),

                                            SizedBox(height: 8.h),
                                            Flexible(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Start New \n Chat',
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 30.w),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 13.0,
                                                        ),
                                                    child: Image.asset(
                                                      AppIcons().arrow,
                                                      width: 18.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  GestureDetector(
                                    onTap: () async {
                                      await model.changeScreen(6);
                                    },
                                    child: Container(
                                      width: 140.w,
                                      height: 90.h,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(AppIcons().bg),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(9),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(
                                              0.08,
                                            ),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              alignment: Alignment.center,
                                              width: 25.w,
                                              height: 25.w,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey.withOpacity(
                                                  0.5,
                                                ),
                                              ),
                                              child: Image.asset(
                                                AppIcons().i23,
                                                width: 16.w,
                                              ),
                                            ),

                                            SizedBox(height: 8.h),
                                            Flexible(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Search By \n Image',
                                                    style: GoogleFonts.roboto(
                                                      textStyle: TextStyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 30.w),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                          top: 13.0,
                                                        ),
                                                    child: Image.asset(
                                                      AppIcons().arrow,
                                                      width: 18.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          SizedBox(height: 20.h),
                          Text(
                            'Explore ',
                            style: GoogleFonts.roboto(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.0,
                              letterSpacing: 0,
                              color: Colors.black,
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
                ),
        );
      },
    );
  }
}
