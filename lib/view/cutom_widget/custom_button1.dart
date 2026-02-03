import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton1 extends StatefulWidget {
  final VoidCallback? onTap;
  final String? title;

  const CustomButton1({super.key, this.onTap, this.title});

  @override
  State<CustomButton1> createState() => _CustomButton1State();
}

class _CustomButton1State extends State<CustomButton1> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue.shade600,
      borderRadius: BorderRadius.circular(7),
      elevation: _isPressed ? 2 : 6,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: widget.onTap,
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) => setState(() => _isPressed = false),
        onTapCancel: () => setState(() => _isPressed = false),
        splashColor: Colors.white.withOpacity(0.3),
        highlightColor: Colors.transparent,
        child: Container(
          alignment: Alignment.center,
          width: 120.w,
          height: 35.h,
          child: Text(
            widget.title ?? "",
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
