import 'package:ai_chat_app/view_model/onboarding_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/cutom_widget/custom_button1.dart';
import 'package:provider/provider.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(
      builder: (BuildContext context, provider, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppIcons().sp2, width: 45.w, height: 40.h),
                      SizedBox(width: 5),

                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'ZAP',
                          style: TextStyle(
                            fontSize: 23.sp,
                            letterSpacing: 5,
                            fontFamily: 'Bauhaus',
                            color: const Color(0xff318CE7),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Expanded(
                    child: PageView.builder(
                      controller: provider.pageController,
                      itemCount: provider.onboardingData.length,
                      onPageChanged: (index) {
                        provider.ChangeOnboardingPage(index);
                      },
                      itemBuilder: (context, index) {
                        final data = provider.onboardingData[index];
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 30.h),
                            Image.asset(
                              data['image']!,
                              width: 300.w,
                              height: 300.h,
                            ),
                            SizedBox(height: 30.h),
                            Text(
                              data['title']!,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),

                            Text(
                              data['subtitle']!,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(134, 31, 31, 32),
                                ),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      provider.onboardingData.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: provider.currentPage == index ? 20.w : 8.w,
                        height: 8.h,
                        decoration: BoxDecoration(
                          color: provider.currentPage == index
                              ? Color(0xff2B89DD)
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  CustomButton1(
                    title:
                        provider.currentPage ==
                            provider.onboardingData.length - 1
                        ? 'Get Started'
                        : 'Next',
                    onTap: provider.nextPage,
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
