import 'dart:async';
import 'package:get/get.dart';
import '../../resourse/routes/routes_name.dart';
import '../../session_management/session_management_controller.dart';

class SplashServices{
  SessionManagement sessionManagement=SessionManagement();
  void isLogin() {
    sessionManagement.getEmail().then((value) {
      if (value != null && value.isNotEmpty) {
       // Timer(const Duration(seconds: 1), () => Get.offAllNamed(RoutesName.homeScreen));
      } else {
        // Timer(const Duration(seconds: 1), () => Get.toNamed(RoutesName.loginScreen));
      }
    }).onError((error, stackTrace) => null);
  }
}