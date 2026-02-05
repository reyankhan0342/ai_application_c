import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.centerLeft,
      width: screenWidth * 0.5,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffC7C8CF).withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
          alignment: Alignment.center,
          width: 30,
          decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: Image.asset(AppIcons().mes, width: 22),
        ),
        title: Text(
          'Define C++ function.',
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
          ),
        ),
        trailing: Icon(Icons.star, color: Colors.blue),
      ),
    );
  }
}
