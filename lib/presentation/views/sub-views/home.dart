import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/constant/constants.dart';
import 'package:faramove/core/widgets/default_padding.dart';
import 'package:faramove/core/widgets/icon.dart';
import 'package:faramove/core/widgets/spacer.dart';
import 'package:faramove/presentation/widgets/homepage/appbar.dart';
import 'package:faramove/presentation/widgets/homepage/quick_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageAppBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: const Color(0xFFF1F6FE),
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: ListTile(
                leading: Container(
                  width: 40.w,
                  height: 40.h,
                  padding: EdgeInsets.all(10.r),
                  decoration: const BoxDecoration(
                    color: Color(0xFFDEEAFD),
                    shape: BoxShape.circle,
                  ),
                  child: const MyIcon(icon: iAlert),
                ),
                title: Text(
                  'Go to your profile to complete\nregistration',
                  style: theme.textTheme.titleMedium!.copyWith(
                    color: const Color(0xFF0A0B20),
                  ),
                ),
                trailing: const MyIcon(icon: iForward),
              ),
            ),
            const YGap(20),
            DefaultPadding(
              child: Text(
                'Quick Actions',
                style: theme.textTheme.displayMedium,
              ),
            ),
            const YGap(16),
            for (var action in quickActions)
              QuickActions(
                backgroundImage: action['backgroundImage'],
                cardColor: action['cardColor'] as Color,
                illustration: action['illustration'],
                subtitle: action['subtitle'],
                title: action['title'],
                subColor: action['subColor'] as Color,
                illustrationColor: action['illustrationColor'] as Color,
                onTap: action['onTap'],
              ),
            Container(height: 4.h, color: Colors.grey.shade100),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: ListTile(
                title: Text(
                  'Upcoming Session (0)',
                  style: theme.textTheme.displayMedium!,
                ),
                trailing: const MyIcon(icon: iForward),
              ),
            ),
            Container(height: 4.h, color: Colors.grey.shade100),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: ListTile(
                title: Text(
                  'Tips to stay healthy',
                  style: theme.textTheme.displayMedium!,
                ),
                subtitle: Text(
                  'Get simple health tips.',
                  style: theme.textTheme.bodyMedium,
                ),
                trailing: const MyIcon(icon: iForward),
              ),
            ),
            Container(height: 4.h, color: Colors.grey.shade100),
            const YGap(150),
          ],
        ),
      ),
    );
  }
}
