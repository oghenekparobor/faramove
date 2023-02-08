import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YGap extends StatelessWidget {
  const YGap(this.value, {super.key});

  final num value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: value.toDouble().h);
  }
}

class XGap extends StatelessWidget {
  const XGap(this.value, {super.key});

  final num value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: value.toDouble().w);
  }
}
