import 'dart:async';
import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class DashBoardViewModel extends GetxController {
  late PageController pageController;
  late Timer _timer;
  final int itemCount = 5;
  final int totalFakePages = 10000;

  final List<Widget> imgList = [
    Image.asset('assets/images/Youtubenail1.jpeg', fit: BoxFit.cover),
    Image.asset('assets/images/Youtubenail2.jpeg', fit: BoxFit.cover),
    Image.asset('assets/images/Youtubenail3.jpeg', fit: BoxFit.cover),
    Image.asset('assets/images/Youtubenail4.jpeg', fit: BoxFit.cover),
  ];

  final Random _random = Random();

  Color getRandomColor() {
    return Color.fromARGB(
      255,
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }


  List<ImageData> imageDataList = [
    ImageData(
      imagePath: "assets/images/collections.png",
      name: "Image 1",
      description: "Teaching Jobs & DSSSB.",
    ),
    ImageData(
      imagePath: "assets/images/customer.png",
      name: "Image 2",
      description: "This is the second image.",
    ),
    ImageData(
      imagePath: "assets/images/customer.png",
      name: "Image 2",
      description: "This is the second image.",
    ),
    ImageData(
      imagePath: "assets/images/customer-support.png",
      name: "Image 4",
      description: "This is the first image.",
    ),
    ImageData(
      imagePath: "assets/images/distributor_ipt.png",
      name: "Image 5",
      description: "This is the second image.",
    ),    ImageData(
      imagePath: "assets/images/ipt_list.png",
      name: "Image 6",
      description: "This is the first image.",
    ),
    ImageData(
      imagePath: "assets/images/event_management.png",
      name: "Image 7",
      description: "This is the second image.",
    ),
    ImageData(
      imagePath: "assets/images/distributor_ipt.png",
      name: "Image 8",
      description: "This is the first image.",
    ),

    // add more images here...
  ];


  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: totalFakePages ~/ 2);

    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (pageController.hasClients) {
        pageController.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
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


class ImageData {
  final String imagePath;
  final String name;
  final String description;

  // Constructor for the class
  ImageData({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}
