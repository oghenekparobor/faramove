import 'package:animate_do/animate_do.dart';
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/constant/constants.dart';
import 'package:faramove/core/widgets/default_padding.dart';
import 'package:faramove/core/widgets/icon.dart';
import 'package:faramove/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElasticIn(
          duration: const Duration(milliseconds: 500),
          child: DefaultPadding(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(
                      image,
                      width: 93.85.w,
                      height: 101.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const XGap(14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          title,
                          style: theme.textTheme.titleLarge!.copyWith(
                            color: const Color(0xFF031025),
                          ),
                        ),
                        const YGap(2),
                        Row(
                          children: [
                            const MyIcon(
                              icon: iPerson,
                              size: Size(15, 15),
                            ),
                            const XGap(8),
                            Text(
                              '200+',
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF031025),
                              ),
                            ),
                            const XGap(14),
                            const MyIcon(
                              icon: iLetterBox,
                              size: Size(15, 15),
                            ),
                            const XGap(8),
                            Text(
                              '50',
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF031025),
                              ),
                            ),
                          ],
                        ),
                        const YGap(7),
                        SizedBox(
                          height: 32.h,
                          child: Row(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    for (var i = 0; i < headshots.length; i++)
                                      Positioned(
                                        left: -120 + (i * 50),
                                        bottom: 0,
                                        right: 0,
                                        top: 0,
                                        child: CircleAvatar(
                                          maxRadius: 24.r,
                                          backgroundImage: NetworkImage(
                                            headshots[i],
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: theme.primaryColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6.r),
                                ),
                                child: Text(
                                  'Join',
                                  style: theme.textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Divider()
      ],
    );
  }
}
