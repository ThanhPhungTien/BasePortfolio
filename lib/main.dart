import 'package:flutter/material.dart';
import 'package:portfilio/base/route_names.dart';
import 'package:portfilio/base/style.dart';
import 'package:portfilio/page/home/home_new_view.dart';
import 'package:portfilio/page/not_found/not_found_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.home,
      onGenerateRoute: (RouteSettings settings) => routeSettings(settings),
    );
  }

  MaterialPageRoute<dynamic> routeSettings(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const HomeNewView(),
          settings: const RouteSettings(name: RouteNames.home),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const NotFoundView(),
          settings: const RouteSettings(name: RouteNames.notFound),
        );
    }
  }
}
