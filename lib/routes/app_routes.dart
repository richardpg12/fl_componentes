import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static final menuOptions = <MenuOption>[
    //MenuOption(route: '/home',name: 'Home Screen',screen: const HomeScreen(),icon: Icons.home,),
    MenuOption(route: '/listview1',name: 'list view 1',screen: const ListView1Screen(),icon: Icons.list_alt,),
    MenuOption(route: '/listview2',name: 'list view 2',screen: const ListView2Screen(),icon: Icons.list,),
    MenuOption(route: '/card',name: 'Cards',screen: const CardScreen(),icon: Icons.car_rental),
    MenuOption(route: '/alert',name: 'Alertas',screen: const AlertScreen(),icon: Icons.campaign),
    MenuOption(route: '/avatar',name: 'Circle Avatar',screen: const AvatarScreen(),icon: Icons.supervised_user_circle_outlined),
    MenuOption(route: '/animated',name: 'Animated Container',screen: const AnimatedScreen(),icon: Icons.play_circle_outline_rounded),
    MenuOption(route: '/inputs',name: 'Inputs Screen',screen: const InputsScreen(),icon: Icons.input_rounded),
    MenuOption(route: '/slider',name: 'Slider & Checks',screen: const SliderScreen(),icon: Icons.slow_motion_video_rounded),
    MenuOption(route: '/listviewbuilder',name: 'Infinite Scroll & Pull to refresh',screen: const ListViewBuilderScreen(),icon: Icons.build_circle_outlined),
  ];
  
  
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'/home': (context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  // static  Map<String, Widget Function(BuildContext)> routes =  {
  //       '/home': (BuildContext context) => const HomeScreen(),
  //       '/listview1': (BuildContext context) => const ListView1Screen(),
  //       '/listview2': (BuildContext context) => const ListView2Screen(),
  //       '/card': (BuildContext context) => const CardScreen(),
  //       '/alert': (BuildContext context) => const AlertScreen(),
  //     };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // si no existe la ruta.
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
