import 'package:contador2/models/menu_option.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.warning),
    MenuOption(
        route: 'card',
        name: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.book),
    MenuOption(
        route: 'first',
        name: 'ListView tipo1',
        screen: const FirstScreen(),
        icon: Icons.looks_one),
    MenuOption(
        route: 'second',
        name: 'ListView tipo2',
        screen: const FirstScreen2(),
        icon: Icons.looks_two),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        screen: const AvatarScreen(),
        icon: Icons.manage_accounts_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle),
    MenuOption(
        route: 'inputs',
        name: 'Inputs',
        screen: const InputsScreen(),
        icon: Icons.input_outlined),
    MenuOption(
        route: 'slider',
        name: 'Silders && Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_sharp),
    MenuOption(
        route: 'List View',
        name: 'InfinityScrol & Pull to refresh',
        screen: const ListViewScreen(),
        icon: Icons.list_alt),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes
          .addAll({options.route: (BuildContext context) => options.screen});
    }
    return appRoutes;
  }
  /*static Map<String, Widget Function(BuildContext)> routes = {
    'alertview': (BuildContext context) => const AlertScreen(),
    'cardview1': (BuildContext context) => const CardScreen(),
    'homeview': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const FirstScreen(),
    'listview2': (BuildContext context) => const FirstScreen2(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
