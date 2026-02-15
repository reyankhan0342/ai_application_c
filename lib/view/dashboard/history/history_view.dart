import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/cutom_widget/history_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
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
          'History',
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              Text(
                'Recent',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: ListView.separated(
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  itemBuilder: (context, index) {
                    return HistoryCard();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 14);
                  },
                  itemCount: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
