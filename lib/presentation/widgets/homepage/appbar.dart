import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 60.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: CircleAvatar(
          backgroundImage: const AssetImage(iProfile),
          maxRadius: 16.r,
        ),
      ),
      centerTitle: false,
      title: Text(
        'Hi, Sarah',
        style: theme.textTheme.displayLarge,
      ),
      actions: const [
        MyIconButton(icon: iChat),
        MyIconButton(icon: iNotification),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
