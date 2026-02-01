import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String? title;
  final double? width;
  final IconData? icon;
  final double height;
  VoidCallback? onTap;
  BoxDecoration? decoration;

  CustomButton2({
    required this.height,
    this.decoration,
    this.icon,
    this.onTap,
    this.title,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 20),

            SizedBox(width: 16),
            Text(
              "${title}",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
