
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommunityAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        'Community',
        style: theme.textTheme.displayLarge,
      ),
      actions: const [
        MyIconButton(icon: iSearch),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(1.h),
        child: const Divider(),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
