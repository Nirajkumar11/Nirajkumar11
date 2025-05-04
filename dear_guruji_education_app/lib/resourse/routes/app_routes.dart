import 'package:dear_guruji_education_app/resourse/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../view/splash_view/splash_screen.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(name: RoutesName.splashScreen,
        page: ()=>SplashScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),

  ];
}