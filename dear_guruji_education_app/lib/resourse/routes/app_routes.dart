import 'package:dear_guruji_education_app/resourse/routes/routes_name.dart';
import 'package:get/get.dart';

import '../../view/dashboard_view/Home_view.dart';
import '../../view/login_view/login_view.dart';
import '../../view/login_view/registration_page.dart';
import '../../view/splash_view/splash_screen.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(name: RoutesName.splashScreen,
        page: ()=>SplashScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),

    GetPage(name: RoutesName.loginScreen,
        page: ()=>LoginScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),

    GetPage(name: RoutesName.registerScreen,
        page: ()=>RegisterScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),

    GetPage(name: RoutesName.homeScreen,
        page: ()=>HomePageScreen(),
        transitionDuration: Duration(microseconds: 180),
        transition: Transition.rightToLeftWithFade
    ),

  ];
}