import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../session_management/session_management_controller.dart';

class Login_viewModel extends GetxController{
  final emailController =TextEditingController().obs;
  final passController =TextEditingController().obs;

  final emailFocusNode=FocusNode().obs;
  final passFocusNode=FocusNode().obs;

  RxBool loading=false.obs;

  SessionManagement sessionManagement=SessionManagement();

}