import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../constants/app_colors.dart';
import '../../resourse/routes/routes_name.dart';
import '../../utils/app_utils.dart';
import 'Splash_Services.dart';

class Body extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BodyState();

}

class _BodyState extends State<Body> {
  SplashServices splashServices=SplashServices();

  final size =Get.size.height;

  bool isLoading = true;
  // Added to track whether images are loading
  late ImageProvider backgroundImage,logoImage;

  @override
  void didChangeDependencies() async{
    backgroundImage = AssetImage("assets/images/splash_background_image.jpg");
    //logoImage = AssetImage("assets/images/pristine_pfulfilll.png");
    logoImage = AssetImage("assets/images/pristine_pfulfil.png");
    await precacheImage(backgroundImage,context);
    await precacheImage(logoImage,context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // _enableRotation();
    super.dispose();

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration.zero, () async {
     // bool locationPermissionGranted = await checkLocationPermission();
     // bool notificationPermissionGranted = await checkNotificationPermission();
      bool cameraPermissionGranted = await checkCameraPermission();
      /*if (!locationPermissionGranted && !notificationPermissionGranted &&
          !cameraPermissionGranted) {
        showDisclosureDialog(context);
      }*/
    });
  }

  @override
  Widget build(BuildContext context) {
    // _portraitModeOnly();
    return Stack(
      children: [
        // Background Image
        Image.asset(
          "assets/images/splash_background_image2.jpg",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: size * .15,
          left: 0,
          right: 0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  color: Color.fromARGB(100, 22, 44, 33),
                  child: Text(
                    "Dear Guru Ji",
                    style: TextStyle(
                      color: AllColors.whiteColor,
                      fontSize: 38,
                      fontFamily: "Ageo Persona",
                      //  decoration: TextDecoration.underline,
                      // backgroundColor: Color.fromARGB(100, 22, 44, 33),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Center(
          child: Container(
            margin: EdgeInsets.all(8.0),
            width: 180,
            // Set the desired container width
            height: 180,
            // Set the desired container height
            decoration: BoxDecoration(
              color: Color.fromARGB(121, 22, 44, 33),
              border: Border.all(color: Colors.white10, width: .5),
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Center(
              child: Container(
                width: 120, // Set the desired image width
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: logoImage,
                        fit: BoxFit.fill)), // Set the desired image height
              ),
            ),
          ),
        ),

        Positioned(
            bottom: 60,
            left: 20.0,
            right: 20.0,
            child: OutlinedButton(
              onPressed: () async {
               // bool locationPermissionGranted = await checkLocationPermission();
               // bool notificationPermissionGranted = await checkNotificationPermission();
                bool cameraPermissionGranted = await checkCameraPermission();
                if(cameraPermissionGranted ){
                  Get.toNamed(RoutesName.loginScreen);
                }else {
                  Utils.sanckBarError("Permission Required", "Please All Permission Allow  for use App");
                  requestPermission();
                }

                // Get.toNamed(RoutesName.loginScreen);
              },
              child: const Text('Get Started',style: TextStyle(fontSize: 20),),
              style: OutlinedButton.styleFrom(
                foregroundColor: AllColors.whiteColor, side: BorderSide(
                  width: 1.0, color: Color.fromARGB(121, 22, 44, 33)),
                backgroundColor: Color.fromARGB(121, 22, 44, 33),

              ),
            ))
      ],
    );
  }
  void _portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void _enableRotation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }


  Future<void> requestPermission() async {
    //var permission_location = Permission.location;
    //var permission_notification = Permission.notification;
    var permission_camera = Permission.camera;


    /*if (await permission_location.isDenied) {
      await permission_location.request();
      if(await permission_location.isDenied){
        openAppSettings();
      }

    }
    if (await permission_notification.isDenied) {
      await permission_notification.request();
      if(await permission_notification.isDenied){
        openAppSettings();
      }

      openAppSettings();
    }
*/
    if (await permission_camera.isDenied) {
      await permission_camera.request();
      if(await permission_camera.isDenied){
        openAppSettings();
      }

    }

  }



  Future<bool> checkCameraPermission() async {
    var permissionLocation = Permission.camera;
    return await permissionLocation.isGranted;
  }
}
