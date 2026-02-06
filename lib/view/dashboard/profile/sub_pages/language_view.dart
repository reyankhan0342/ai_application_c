import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Language',
          style: GoogleFonts.roboto(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Container(
          width: screenWidth,
          height: 200.h,
          decoration: BoxDecoration(
            color: Color(0XFF2425270D).withOpacity(0.05),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              _languageTile(
                title: 'Chinese',
                isSelected: true, // selected design
              ),
              _divider(),
              _languageTile(title: 'German'),
              _divider(),
              _languageTile(title: 'Spanish'),
              _divider(),
              _languageTile(title: 'Urdu'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _languageTile({required String title, bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.blue : Colors.grey.shade400,
                width: 2,
              ),
              color: isSelected ? Colors.blue : Colors.transparent,
            ),
            child: isSelected
                ? const Icon(Icons.check, size: 14, color: Colors.white)
                : null,
          ),
        ],
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 0.6,
      color: Colors.grey.withOpacity(0.4),
    );
  }
}
