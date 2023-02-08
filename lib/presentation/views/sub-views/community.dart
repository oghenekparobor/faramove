import 'package:faramove/core/constant/constants.dart';
import 'package:faramove/core/widgets/spacer.dart';
import 'package:faramove/presentation/widgets/community/appbar.dart';
import 'package:faramove/presentation/widgets/community/community.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommunityAppBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var com in communities)
              CommunityCard(
                image: com['image'],
                title: com['title'],
              ),
            const YGap(100),
          ],
        ),
      ),
    );
  }
}
