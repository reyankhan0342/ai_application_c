import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCustomCard extends StatefulWidget {
  final String leadingIcon;
  final String title;
  final VoidCallback? onTap;

  const ProfileCustomCard({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.onTap,
  });

  @override
  State<ProfileCustomCard> createState() => _ProfileCustomCardState();
}

class _ProfileCustomCardState extends State<ProfileCustomCard> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() => isPressed = true);
      },
      onTapUp: (_) {
        setState(() => isPressed = false);
        widget.onTap?.call();
      },
      onTapCancel: () {
        setState(() => isPressed = false);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: 40,
        decoration: BoxDecoration(
          color: isPressed
              ? Colors.black.withOpacity(0.08) // tapped color
              : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          boxShadow: isPressed
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        child: ListTile(
          dense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          leading: Container(
            width: 25,
            height: 25,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: Image.asset(widget.leadingIcon, width: 18),
          ),
          title: Text(
            widget.title,
            style: GoogleFonts.roboto(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          trailing: const Icon(Icons.arrow_right, size: 20),
        ),
      ),
    );
  }
}
