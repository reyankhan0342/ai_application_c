import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' show SizeExtension;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomButton2 extends StatefulWidget {
  final String? title;
  final double? width;
  final String? image;
  final double height;
  final VoidCallback? onTap;
  final BoxDecoration? decoration;

  const CustomButton2({
    super.key,
    required this.height,
    this.decoration,
    this.image,
    this.onTap,
    this.title,
    this.width,
  });

  @override
  State<CustomButton2> createState() => _CustomButton2State();
}

class _CustomButton2State extends State<CustomButton2> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        (widget.decoration?.borderRadius as BorderRadius?) ??
        BorderRadius.circular(8);

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(7),
      elevation: _isPressed ? 2 : 6,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        onTap: widget.onTap,
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) => setState(() => _isPressed = false),
        onTapCancel: () => setState(() => _isPressed = false),
        splashColor: Colors.grey.withOpacity(0.3),
        highlightColor: Colors.transparent,
        child: Container(
          width: widget.width,
          height: widget.height,
          alignment: Alignment.center,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.image != null) Image.asset(widget.image!, width: 18),
              const SizedBox(width: 8),

              Text(
                widget.title ?? '',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
