import 'package:animate_do/animate_do.dart';
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/core/widgets/default_padding.dart';
import 'package:faramove/core/widgets/icon.dart';
import 'package:faramove/core/widgets/spacer.dart';
import 'package:faramove/main.dart';
import 'package:faramove/presentation/widgets/podcast/appbar.dart';
import 'package:faramove/presentation/widgets/podcast/bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';

class Podcast extends StatefulWidget {
  const Podcast({super.key});

  @override
  State<Podcast> createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: size.height * 0.5,
              width: double.infinity,
              child: Image.asset(iConfetti),
            ),
          ),
          Scaffold(
            appBar: const PodAppBar(),
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DefaultPadding(
                  child: Container(
                    width: double.infinity,
                    height: 321.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFE7F0FD),
                          Color(0xFFFCEDE8),
                        ],
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          child: Image.asset(
                            iConfetti,
                            width: double.infinity,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Align(
                          child: ElasticIn(
                            child: SizedBox(
                              height: 60.h,
                              child: Image.asset(iText),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const YGap(32),
                DefaultPadding(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '10 reasons ',
                              style: theme.textTheme.displayMedium,
                            ),
                            Text(
                              'Stay Inspired- Episode 1 ',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      const MyIcon(
                        icon: iVolume,
                        size: Size(16, 16),
                      ),
                    ],
                  ),
                ),
                const YGap(12),
                SizedBox(
                  height: 40.h,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Slider(
                          value: 20,
                          min: 0,
                          max: 100,
                          onChanged: (_) {},
                          activeColor: theme.primaryColor,
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 0,
                        right: 0,
                        child: DefaultPadding(
                          child: Row(
                            children: [
                              const XGap(8),
                              Text(
                                '1:53',
                                style: theme.textTheme.titleMedium!.copyWith(
                                  color: const Color(0xFF031025),
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '-1:53',
                                style: theme.textTheme.titleMedium!.copyWith(
                                  color: const Color(0xFF031025),
                                ),
                              ),
                              const XGap(8),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const YGap(12),
                SizedBox(
                  height: 60,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: DefaultPadding(
                          child: Text(
                            '1x',
                            style: theme.textTheme.displayMedium,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const MyIcon(icon: iPrevious),
                          const XGap(30),
                          Container(
                            height: 60.h,
                            width: 60.w,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(20.r),
                            child: const MyIcon(
                              icon: iPause,
                              size: Size(16, 16),
                            ),
                          ),
                          const XGap(30),
                          const MyIcon(icon: iNext),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ).asGlass(
            blurX: 2,
            blurY: 2,
          ),
          const PodBottom()
        ],
      ),
    );
  }
}
