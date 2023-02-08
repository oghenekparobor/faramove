import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    required this.icon,
    this.onPressed,
    this.color = const Color(0xFFF8F9FB),
    this.size = const Size(20, 20),
  });

  final String icon;
  final Color color;
  final VoidCallback? onPressed;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          icon,
          width: size.width.w,
          height: size.height.h,
        ),
      ),
    );
  }
}
