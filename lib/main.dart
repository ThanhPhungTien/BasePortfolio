import 'package:flutter/material.dart';
import 'package:portfilio/base/route_names.dart';
import 'package:portfilio/base/theme.dart';
import 'package:portfilio/page/home/home_view.dart';
import 'package:portfilio/page/not_found/not_found_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          builder: (BuildContext context) => HomeView(),
          settings: const RouteSettings(name: RouteNames.home),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => NotFoundView(),
          settings: const RouteSettings(name: RouteNames.notFound),
        );
    }
  }
}
