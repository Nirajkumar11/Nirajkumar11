import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../size_config.dart';
import 'Splash_Services.dart';
import 'body.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices=SplashServices();

  final size =Get.size.height;
  bool isLoading = true; // Added to track whether images are loading
  late ImageProvider logo;
  @override
  void initState() {
    super.initState();

    //splashServices.isLogin();
    // splashServices.checkInternetAndRequest(context);

  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Body()
    );
  }



}
