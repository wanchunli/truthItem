import 'package:flutter/material.dart';
import 'package:truth/pages/appbar/appbar_page.dart';
import 'package:truth/pages/setting/setting_page.dart';
import '../pages/appbar/appbar_page.dart';
import '../pages/appbar/appbar_controller_page.dart';

var routes = {
  '/appbar':(context) => AppbarPage(),
  '/tabbarcontroller':(context) => TabBarControllerPage(),
  '/setting': (context, {arguments}) => SettingPage(arguments: arguments),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
