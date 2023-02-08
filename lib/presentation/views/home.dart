import 'package:animate_do/animate_do.dart';
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/constant/constants.dart';
import 'package:faramove/presentation/notifier/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MyViewModel>(
        builder: (context, value, child) => Stack(
          children: [
            value.screens[value.current],
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                currentIndex: value.current,
                backgroundColor: Colors.white10,
                elevation: 0,
                selectedIconTheme: theme.iconTheme.copyWith(
                  color: theme.primaryColor,
                ),
                selectedLabelStyle: theme.textTheme.titleMedium!.copyWith(
                  color: theme.primaryColor,
                ),
                selectedItemColor: theme.primaryColor,
                type: BottomNavigationBarType.fixed,
                onTap: (i) => value.current = i,
                items: [
                  for (var e in menu)
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        (e['label'] == 'Home') ? iHome2 : e['icon'],
                        width: 16.sp,
                        height: 16.sp,
                      ),
                      label: e['label'],
                      activeIcon: ElasticInDown(
                        duration: const Duration(milliseconds: 350),
                        child: Image.asset(
                          (e['label'] == 'Community') ? iCommunity2 : e['icon'],
                          width: 16.sp,
                          height: 16.sp,
                          color:
                              (e['label'] == 'Home' || e['label'] == 'Account')
                                  ? null
                                  : theme.primaryColor,
                        ),
                      ),
                    ),
                ],
              ).asGlass(),
            ),
          ],
        ),
      ),
    );
  }
}
