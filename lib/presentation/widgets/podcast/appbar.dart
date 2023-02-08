import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/widgets/custom_icon.dart';
import 'package:faramove/core/widgets/icon.dart';
import 'package:faramove/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PodAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 35,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: GestureDetector(
          onTap: () => nav.pop(),
          child: const MyIcon(
            icon: iDown,
            size: Size(8, 15),
          ),
        ),
      ),
      centerTitle: false,
      title: Text(
        'Stay Motivated Ep. 1',
        style: theme.textTheme.displayLarge!.copyWith(fontSize: 18.sp),
      ),
      actions: const [
        MyIconButton(
          icon: iSave,
          size: Size(16, 16),
        ),
        MyIconButton(
          icon: iUpload,
          size: Size(16, 16),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
