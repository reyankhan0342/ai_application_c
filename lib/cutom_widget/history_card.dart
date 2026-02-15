import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.4,
      height: 47.h,
      decoration: BoxDecoration(
        color: const Color(0xff2425270D).withOpacity(0.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        // 👈 Ensures vertical centering
        child: ListTile(
          dense: true, // 👈 reduces height
          contentPadding: EdgeInsets.only(left: 8.w, right: 8.w), //
          leading: Container(
            alignment: Alignment.center,
            width: 27,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Image.asset(AppIcons().mes, width: 15),
          ),
          title: Text(
            'Define C++ function.',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          trailing: const Icon(Icons.star, color: Colors.blue, size: 15),
        ),
      ),
    );
  }
}
