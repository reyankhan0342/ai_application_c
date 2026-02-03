import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCustomCard extends StatelessWidget {
  final String title;
  String description;
  final String icon;
  HomeCustomCard({
    super.key,
    required this.description,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.42,
      height: 140.h,
      decoration: BoxDecoration(
        color: Color(0xffE5F0FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0XFF2B89DD),
              ),
              child: Image.asset(icon),
            ),

            SizedBox(height: 8.h),
            Text(
              '${title.toString()}',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(height: 5.h),
            Text(
              '${description.toString()}',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
