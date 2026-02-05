import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHieght = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),

      body: Column(
        children: [
          SizedBox(height: 20),

          Container(
            height: 40.h,
            width: screenWidth,
            decoration: BoxDecoration(color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
