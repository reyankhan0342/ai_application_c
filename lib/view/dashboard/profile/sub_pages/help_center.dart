import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/cutom_widget/custom_button1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Image.asset(AppIcons().chatbot, width: 120)],
            ),
            SizedBox(height: 20.h),
            Text(
              'Email',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10),

            Container(
              width: screenWidth,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: const Color(0xff242527).withOpacity(0.08),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xff242527).withOpacity(0.4),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    size: 20,
                    color: Colors.grey.shade700,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // remove underline
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 12,
                          color: Colors.grey.shade600,
                        ),
                        isDense: true,
                      ),
                      style: GoogleFonts.roboto(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Describe your issue',
              style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: screenWidth,
              height: 180.h,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xff242527).withOpacity(0.08),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xff242527).withOpacity(0.4),
                ),
              ),
              child: TextField(
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:
                      'Write your complaint or issue here...\nOur support team will contact you via email.',
                  hintStyle: GoogleFonts.roboto(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                    height: 1.4,
                  ),
                ),
                style: GoogleFonts.roboto(fontSize: 13, color: Colors.black),
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  size: 16,
                  color: Colors.grey.shade600,
                ),
                const SizedBox(width: 6),
                Text(
                  'Support will respond via your registered email',
                  style: GoogleFonts.roboto(
                    fontSize: 11,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 100.h),
            Center(
              child: CustomButton1(title: 'Submit', onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
