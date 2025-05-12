import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class DashBoardViewModel extends GetxController {
  late PageController pageController;
  late Timer _timer;
  int _currentPage = 0;
  final int itemCount = 5;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();

    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (pageController.hasClients) {
        int nextPage = pageController.page!.toInt() + 1;

        if (nextPage >= 10000) {
          // Jump back to beginning
          pageController.jumpToPage(0);
        } else {
          pageController.animateToPage(
            nextPage,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }
      }
    });
  }


  @override
  void onClose() {
    pageController.dispose();
    _timer.cancel();
    super.onClose();
  }
}
