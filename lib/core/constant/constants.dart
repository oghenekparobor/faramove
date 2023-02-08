import 'package:faramove/config/route/route.dart';
import 'package:faramove/core/assets/assets.dart';
import 'package:faramove/main.dart';
import 'package:flutter/material.dart';

const String kAppName = 'Faramove';

const List menu = [
  {
    'label': 'Home',
    'icon': iHome,
  },
  {
    'label': 'Resources',
    'icon': iResouces,
  },
  {
    'label': 'Session',
    'icon': iSession,
  },
  {
    'label': 'Community',
    'icon': iCommunity,
  },
  {
    'label': 'Account',
    'icon': iAccount,
  },
];

List quickActions = [
  {
    'title': 'Book a session',
    'subtitle': 'Get prompt assistance from\nmedical professionals.',
    'illustration': iSessionIllustration,
    'cardColor': const Color(0xFFEEAD44),
    'subColor': Colors.black45,
    'backgroundImage': iSessionBackground,
    'illustrationColor': const Color(0xFFFBDE92),
    'onTap': null,
  },
  {
    'title': 'Diary',
    'subtitle': 'Listen to the highlight from\nyour previous session',
    'illustration': iDairy,
    'cardColor': const Color(0xFFEE7444),
    'subColor': Colors.black45,
    'backgroundImage': iCommunityBackground,
    'illustrationColor': const Color(0xFFFDBB96),
    'onTap': () => nav.pushNamed(Routes.podcast),
  },
  {
    'title': 'Virtual assistant',
    'subtitle':
        'Get easy access to converse with\nthe assistant on how you feel.',
    'illustration': iDairy,
    'cardColor': const Color(0xFF7444EE),
    'subColor': Colors.black45,
    'backgroundImage': iCommunityBackground,
    'illustrationColor': const Color(0xFFAD88FB),
    'onTap': null,
  },
];

const List communities = [
  {
    'title': 'Talks about treatment,\nPathways',
    'image': iOne,
  },
  {
    'title': 'How was your first session\nexperience?',
    'image': iTwo,
  },
  {
    'title': 'How to live with cancer and be\nmentally stable.',
    'image': iThree,
  },
  {
    'title': 'Is reliance on drugs a good\nthing?',
    'image': iFour,
  },
  {
    'title': 'Talks about treatment,\nPathways',
    'image': iFive,
  },
];

const List headshots = [
  'https://img.favpng.com/2/5/14/robert-downey-jr-iron-man-hollywood-actor-png-favpng-afMGhKz39fpgU2wrtD12qUd1d_t.jpg',
  'https://artofheadshots.com/wp-content/uploads/2013/03/Jennifer-Lawrence-courtesy-celebs-venue.png',
  'https://images.squarespace-cdn.com/content/v1/5c4d7e227e3c3a6ec70a5ac7/1578248803252-LUOJBVOGOXJSW47SJJAA/Actors+Headshots%2C+Los+Angeles%2C+London%2C+New+York%2C+Rory+Lewis+Photographer',
  'https://banner2.cleanpng.com/20180725/ozc/kisspng-celebrity-portrait-photography-person-united-state-5b58f83655ee95.785788051532557366352.jpg',
];
