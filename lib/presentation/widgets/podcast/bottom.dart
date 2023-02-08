import 'package:animate_do/animate_do.dart';
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/widgets/default_padding.dart';
import 'package:faramove/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PodBottom extends StatelessWidget {
  const PodBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: DefaultPadding(
          child: Container(
            height: 60.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6.r),
                topRight: Radius.circular(6.r),
              ),
            ),
            child: DefaultPadding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transcript',
                    style: theme.textTheme.titleLarge,
                  ),
                  Container(
                    height: 29.h,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'EXPAND',
                          style: theme.textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const XGap(7),
                        ImageIcon(
                          const AssetImage(iExpand),
                          size: 16.sp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
