import 'package:flutter/material.dart';
import 'package:myhome/presentation/login_screen.dart';
import 'package:myhome/presentation/register_screen.dart';
import 'package:myhome/presentation/menu_screen/menu_screen.dart';
import 'package:myhome/presentation/profile_screen.dart';
import 'package:myhome/presentation/map_screen.dart';
import 'package:myhome/presentation/toolbars_screen.dart';
import 'package:myhome/presentation/applicationsthree_screen.dart';
import 'package:myhome/presentation/services_screen.dart';
import 'package:myhome/presentation/the_servicetwo_screen.dart';
import 'package:myhome/presentation/the_servicethree_screen.dart';
import 'package:myhome/presentation/app_navigation_screen.dart';
import 'package:myhome/presentation/test.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String menuScreen = '/menu_screen';

  static const String profileScreen = '/profile_screen';

  static const String mapScreen = '/map_screen';

  static const String toolbarsScreen = '/toolbars_screen';

  static const String applicationstwoTabContainerScreen =
      '/applicationstwo_tab_container_screen';

  static const String applicationsthreeScreen = '/applicationsthree_screen';

  static const String servicesScreen = '/services_screen';

  static const String theServicetwoScreen = '/the_servicetwo_screen';

  static const String theServicethreeScreen = '/the_servicethree_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String testScreen = '/test';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    menuScreen: (context) => MenuScreen(),
    profileScreen: (context) => ProfileScreen(),
    mapScreen: (context) => MapScreen(),
    toolbarsScreen: (context) => ToolbarsScreen(),
    applicationsthreeScreen: (context) => ApplicationsthreeScreen(),
    servicesScreen: (context) => ServicesScreen(),
    theServicetwoScreen: (context) => TheServicetwoScreen(),
    theServicethreeScreen: (context) => TheServicethreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    // testScreen :(context) => NewsList()
  };
}
