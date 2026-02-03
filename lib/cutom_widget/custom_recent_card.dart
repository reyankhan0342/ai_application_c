import 'package:ai_chat_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRecentCard extends StatelessWidget {
  const CustomRecentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: 300.w,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Color(0xff5FBBEA),
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Image.asset(AppIcons().mes, width: 20),
          ),
        ),
        title: Text(
          'Define C++ function.',
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        trailing: Icon(Icons.star, color: Color(0xff5FBBEA)),
      ),
    );
  }
}
