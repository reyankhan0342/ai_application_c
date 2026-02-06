import 'dart:developer';

import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/cutom_widget/custom_divider.dart';
import 'package:ai_chat_app/cutom_widget/custom_recent_card.dart';
import 'package:ai_chat_app/cutom_widget/profile_custom_card.dart';
import 'package:ai_chat_app/view/dashboard/profile/sub_pages/help_center.dart';
import 'package:ai_chat_app/view/dashboard/profile/sub_pages/language_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 32, height: 33),
          ),
        ],
        title: Text(
          ' ',
          style: GoogleFonts.roboto(
            fontSize: 18.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 28),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                width: screenWidth,
                height: 160.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),

                  image: DecorationImage(
                    image: AssetImage(AppIcons().bg),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      spreadRadius: 1,
                      offset: Offset(0, 3), // shadow direction (x, y)
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
                              fontSize: 16.sp,
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
                          SizedBox(width: 20),
                          Image.asset(AppIcons().coin, width: 30),
                        ],
                      ),

                      Text(
                        '+1220',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 23.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),

                      Text(
                        'Watch Ad to Earn Credit',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Flexible(
                        child: GestureDetector(
                          onTap: () async {
                            log(' start recording tap ===>>>>> ');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 180.w,
                            height: 45,
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
                                  fontSize: 16.sp,
                                  color: Colors.blueAccent,

                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 18),
              Text(
                'Settings',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(height: 14),
              Container(
                height: 140,
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
                  color: const Color(0xff242527).withOpacity(0.05),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ProfileCustomCard(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LanguageView(),
                            ),
                          );
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

              SizedBox(height: 15),
              Text(
                'Support',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 90,
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
                    Container(
                      height: 0.2,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    ProfileCustomCard(
                      leadingIcon: AppIcons().restor,
                      title: 'Restore Purchases',
                    ),
                  ],
                ),
              ),

              SizedBox(height: 12),

              Text(
                'About Us',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8),
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
                    SizedBox(height: 8),
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
