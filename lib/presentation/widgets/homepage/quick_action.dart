import 'package:animate_do/animate_do.dart';
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/widgets/default_padding.dart';
import 'package:faramove/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
    required this.backgroundImage,
    required this.cardColor,
    required this.illustration,
    this.subColor = Colors.black38,
    required this.subtitle,
    required this.title,
    required this.illustrationColor,
    this.onTap,
  });

  final String backgroundImage;
  final String title;
  final String subtitle;
  final String illustration;
  final Color cardColor;
  final Color subColor;
  final Color illustrationColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElasticIn(
      child: DefaultPadding(
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: cardColor,
            child: SizedBox(
              height: 105.h,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Image.asset(
                          backgroundImage,
                          color: subColor,
                          fit: BoxFit.cover,
                        ),
                        DefaultPadding(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                title,
                                style: theme.textTheme.titleLarge,
                              ),
                              const YGap(6),
                              Text(
                                subtitle,
                                style: theme.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset(
                    illustration,
                    color: illustrationColor,
                    width: 80.w,
                    height: 80.h,
                    fit: BoxFit.contain,
                  ),
                  const XGap(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
