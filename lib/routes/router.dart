import 'package:flutter/material.dart';
import 'package:novel_reader/widgets/home_page.dart';
import 'package:novel_reader/widgets/setting_page.dart';

class AppRouter {
  static const String home = "/home";
  static const String settings = "/settings";

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    settings: (context) => SettingsPage(),
  };
}
