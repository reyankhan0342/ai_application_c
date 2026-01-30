import 'package:ai_chat_app/core/const/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton1 extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  String? icon;

  CustomButton1({super.key, this.onTap, this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 120.w,
        height: 35.h,

        decoration: BoxDecoration(
          color: AppColor().blue,
          borderRadius: BorderRadius.circular(7),
        ),

        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${title}",
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(width: 5),
            ],
          ),
        ),
      ),
    );
  }
}
