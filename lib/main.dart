import 'package:faramove/config/route/route.dart';
import 'package:faramove/config/theme/theme.dart';
import 'package:faramove/core/constant/constants.dart';
import 'package:faramove/presentation/notifier/view_model.dart';
import 'package:faramove/presentation/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navKey = GlobalKey();
final nav = Navigator.of(navKey.currentContext!);
final size = MediaQuery.of(navKey.currentContext!).size;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      useInheritedMediaQuery: true,
      builder: (context, child) => ChangeNotifierProvider.value(
        value: MyViewModel(),
        builder: (context, child) => MaterialApp(
          title: kAppName,
          theme: theme,
          builder: (context, child) {
            final query = MediaQuery.of(context);
            final scale = query.textScaleFactor.clamp(1.0, 1.1);

            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
              child: child!,
            );
          },
          home: const Home(),
          onGenerateRoute: (s) => Routes.onGenerateRoute(s),
          navigatorKey: navKey,
        ),
      ),
    );
  }
}
