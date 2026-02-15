import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:ai_chat_app/cutom_widget/custom_button1.dart';
import 'package:ai_chat_app/cutom_widget/custom_button2.dart';
import 'package:ai_chat_app/view_model/MainMenuProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SerachByImageScreen extends StatelessWidget {
  const SerachByImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MainMnuprovider>(context, listen: false);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,

        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            model.changeScreen(-0);
          },

          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 25.w),
          ),
        ],
        title: Text(
          'Search By Image',
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: Column(
          children: [
            SizedBox(height: 30.h),
            Container(
              alignment: Alignment.center,
              width: 300.w,
              height: 480.h,
              decoration: BoxDecoration(
                color: Color(0xffC7C8CF),
                borderRadius: BorderRadius.circular(12),
                border: BoxBorder.all(color: Color(0xff318CE7), width: 1),
              ),

              child: Image.asset(AppIcons().i22, width: 160.w, height: 100.h),
            ),

            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      width: 40.w,

                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.keyboard_alt,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CustomButton2(
                    width: 120.w,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.blue),
                    title: 'Search ',
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      width: 40.w,

                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(AppIcons().g, width: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
