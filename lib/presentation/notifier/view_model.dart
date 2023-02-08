import 'package:faramove/main.dart';
import 'package:faramove/presentation/views/sub-views/community.dart';
import 'package:faramove/presentation/views/sub-views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final vmService = Provider.of<MyViewModel>(
  navKey.currentContext!,
  listen: false,
);

class MyViewModel with ChangeNotifier {
  var _current = 0;

  int get current => _current;

  set current(int i) {
    _current = i;

    notifyListeners();
  }

  List<Widget> screens = [
    const HomePage(),
    Container(),
    Container(),
    const CommunityPage(),
    Container(),
  ];
}
