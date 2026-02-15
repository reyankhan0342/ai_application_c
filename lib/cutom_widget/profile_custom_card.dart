import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCustomCard extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final VoidCallback? onTap;

  const ProfileCustomCard({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Important
      borderRadius: BorderRadius.circular(8.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.r),
        onTap: onTap,
        splashColor: Colors.black.withOpacity(0.1),
        highlightColor: Colors.black.withOpacity(0.05),
        child: Container(
          height: 37.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Leading Icon
              Container(
                width: 25.w,
                height: 25.h,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(leadingIcon, width: 18.w),
              ),

              SizedBox(width: 12.w),

              // Title
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),

              Icon(Icons.arrow_right, size: 20.w),
            ],
          ),
        ),
      ),
    );
  }
}
