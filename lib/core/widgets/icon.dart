import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    super.key,
    required this.icon,
    this.color,
    this.size = const Size(24, 24),
  });

  final String icon;
  final Color? color;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      width: size.width.w,
      height: size.height.h,
      color: color,
    );
  }
}
