import 'package:faramove/presentation/views/podcast.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String podcast = '/podcast';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case podcast:
        return _getPageRoute(
          settings: settings,
          viewToShow: const Podcast(),
        );
      default:
        return _getPageRoute(
          settings: settings,
          viewToShow: const SizedBox(),
        );
    }
  }
}

PageRoute _getPageRoute({
  required RouteSettings settings,
  required Widget viewToShow,
}) {
  return MaterialPageRoute<void>(
    settings: settings,
    builder: (_) => viewToShow,
  );
}
