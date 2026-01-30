import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthCustomTextfield extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final IconData? prefcon;
  final IconData? suffixIc;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  bool obscureText;
  VoidCallback? visibility;

  AuthCustomTextfield({
    super.key,
    required this.hintText,
    this.labelText,
    this.prefcon,
    this.suffixIc,
    this.visibility,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),

          hintText: hintText,
          labelText: labelText,

          prefixIcon: prefcon != null
              ? Icon(prefcon, color: Colors.blue)
              : null,
          suffixIcon: suffixIc != null
              ? InkWell(
                  onTap: visibility,
                  child: Icon(
                    suffixIc,
                    color: obscureText == true ? Colors.black : Colors.blue,
                  ),
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 14,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue, width: 0.9),
          ),

          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),

          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
