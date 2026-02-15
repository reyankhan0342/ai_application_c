import 'dart:developer';

import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/cutom_widget/custom_divider.dart';
import 'package:ai_chat_app/cutom_widget/custom_recent_card.dart';
import 'package:ai_chat_app/cutom_widget/profile_custom_card.dart';
import 'package:ai_chat_app/view/dashboard/profile/sub_pages/help_center.dart';
import 'package:ai_chat_app/view/dashboard/profile/sub_pages/language_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_x/get_navigation/get_navigation.dart';
import 'package:get_x/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 25.w),
          ),
        ],
        title: Text(
          'Account ',
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                width: screenWidth,
                height: 170.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),

                  image: DecorationImage(
                    image: AssetImage(AppIcons().bg),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(0, 1), // shadow direction (x, y)
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topLeft,
                        child: Text(
                          'Your Credits',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Image.asset(AppIcons().coin, width: 25.w),
                        ],
                      ),

                      Text(
                        '+1220',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),

                      Text(
                        'Watch Ad to Earn Credit',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      GestureDetector(
                        onTap: () async {
                          log(' start recording tap ===>>>>> ');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 140.w,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.blueAccent,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            'Watch Ad ',
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.blueAccent,

                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 14.h),
              Text(
                'Settings',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 12.h),
              Container(
                height: 120.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.50),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(0, 3), // shadow direction (x, y)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff2425270D).withOpacity(0.05),
                ),

                //    padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ProfileCustomCard(
                        onTap: () {
                          Get.toNamed("/LanguageView");
                        },
                        leadingIcon: AppIcons().language,
                        title: 'Language',
                      ),
                    ),
                    const CustomDivider(),

                    ProfileCustomCard(
                      leadingIcon: AppIcons().language,
                      title: 'Clear History',
                    ),

                    const CustomDivider(),
                    ProfileCustomCard(
                      leadingIcon: AppIcons().about,
                      title: 'About',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),
              Text(
                'Support',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 80.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.50),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(0, 3), // shadow direction (x, y)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.green,
                  color: const Color(0xff242527).withOpacity(0.05),
                ),
                child: Column(
                  children: [
                    ProfileCustomCard(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HelpCenter()),
                        );
                      },
                      leadingIcon: AppIcons().help,
                      title: 'Help',
                    ),
                    const CustomDivider(),
                    ProfileCustomCard(
                      leadingIcon: AppIcons().restor,
                      title: 'Restore Purchases',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12.h),

              Text(
                'About Us',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.50),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(0, 3), // shadow direction (x, y)
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.amber,
                  color: const Color(0xff242527).withOpacity(0.05),
                ),
                child: Column(
                  children: [
                    ProfileCustomCard(
                      onTap: () {},
                      leadingIcon: '${AppIcons().language}',
                      title: 'Rate Us',
                    ),
                    Center(child: CustomDivider()),

                    ProfileCustomCard(
                      leadingIcon: '${AppIcons().share}',
                      title: 'Share with friends',
                    ),
                    Center(child: CustomDivider()),

                    ProfileCustomCard(
                      leadingIcon: '${AppIcons().language}',
                      title: 'Terms of use',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
