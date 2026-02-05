import 'package:ai_chat_app/core/constant/app_icons.dart';
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
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            model.changeScreen(-0);
          },

          child: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(AppIcons().cra, width: 32, height: 33),
          ),
        ],
        title: Text(
          'Search By Image',
          style: GoogleFonts.roboto(
            fontSize: 18.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Container(
              alignment: Alignment.center,
              width: 300.w,
              height: 500.h,
              decoration: BoxDecoration(
                color: Color(0xffC7C8CF),
                borderRadius: BorderRadius.circular(12),
                border: BoxBorder.all(color: Color(0xff318CE7), width: 1),
              ),

              child: Image.asset(AppIcons().i22, width: 160.w, height: 100.h),
            ),

            SizedBox(height: 25.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),

                Container(
                  alignment: Alignment.center,
                  width: 120.w,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Text(
                    'Search ',
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(AppIcons().g),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
