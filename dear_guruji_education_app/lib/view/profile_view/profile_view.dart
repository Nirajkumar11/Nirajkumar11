import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_font_size.dart';
import '../../resourse/routes/routes_name.dart';

class ProfileView extends StatelessWidget{

  ProfileView({super.key});
  Size size = Get.size;

  Future<bool> onWillPop() async {
    Get.offAllNamed(RoutesName.homeScreen);
    return false; // Prevent the default back behavior
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AllColors.primaryDark1,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,right: 2.0,top: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Profile",
                            style: TextStyle(
                              color: AllColors.customDarkerWhite,
                              fontWeight: FontWeight.w700,
                              fontSize: AllFontSize.twentee,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.logout, color: AllColors.customDarkerWhite, size: 26),
                            onPressed: () {
                              Get.defaultDialog(
                                title: "LOGOUT",
                                titleStyle: const TextStyle(
                                    color: AllColors.primaryDark1, fontSize: 18, fontWeight: FontWeight.bold),
                                content: const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.0),
                                  child: Text("Do you want to Logout?",
                                    style: TextStyle(color: AllColors.primaryDark1,
                                        fontWeight: FontWeight.w600,fontSize: AllFontSize.fourtine),),
                                ),
                                confirm: OutlinedButton(
                                    onPressed: (){

                                    },
                                    child: const Text("Yes",
                                  style: TextStyle(color: AllColors.primaryDark1),)

                                ),
                                cancel: OutlinedButton(onPressed: () => Get.back(),
                                  child: const Text("No", style: TextStyle(color: Colors.red)),),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    /* GestureDetector(
                      child: Container(
                        width: 110,
                        height: 110,
                        margin: EdgeInsets.all(8.0),
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(color: AllColors.lightgreyColor),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: GetImageSection(profileVM.pickedImage.value,''),
                        //Image.asset('assets/images/pristine_pfulfil.png'),
                      ),
                      onTap: (){
                        profileVM.pickProfileImage(context: context);
                      },
                    ),*/
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          CircleAvatar(
                              backgroundColor: AllColors.lightgreyColor,
                              child: Icon(Icons.person)
                          ),
                          Positioned(
                              bottom: 0,
                              right: -25,
                              child: RawMaterialButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0),
                                      ),
                                    ),
                                    builder: (BuildContext context) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                              color: Colors.grey,
                                              margin:EdgeInsets.only(left: 0,right: 0,top: 15,bottom: 5),
                                              height: 5,
                                              width:40
                                          ),
                                          Text('Profile Photo',
                                            style: GoogleFonts.poppins(
                                                color: AllColors.primaryDark1,
                                                fontSize: AllFontSize.sisxteen,
                                                fontWeight:
                                                FontWeight.w500),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.camera_alt,color: AllColors.primaryDark1,),
                                            title: Text('Camera'),
                                            onTap: () {
                                              // dashboardVM.openImageSource(ImageSource.camera); // Open camera
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.photo_library,color: AllColors.primaryDark1,),
                                            title: Text('Gallery'),
                                            onTap: () {
                                              // dashboardVM.openImageSource(ImageSource.gallery);
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                elevation: 2.0,
                                fillColor: AllColors.customDarkerWhite,
                                child: Icon(Icons.camera_alt, color: AllColors.primaryDark1,size: 20,),
                                padding: EdgeInsets.all(10.0),
                                shape: CircleBorder(),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                    Text(
                      'email123@gmail.com',
                      style: TextStyle(color: AllColors.customDarkerWhite, fontWeight: FontWeight.w500, fontSize: AllFontSize.fourtine),
                    ),
                    SizedBox(height: size.height*0.07,),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 220,
              left: 10,
              right: 10,
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
                decoration: BoxDecoration(
                  color: AllColors.customDarkerWhite,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: AllColors.primaryliteColor, style: BorderStyle.solid),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Your content for the second container...
                      Column(
                        children: [
                          Text('Version',style: GoogleFonts.poppins(
                              color: AllColors.lightblackColor,
                              fontSize: AllFontSize.fourtine,
                              fontWeight: FontWeight.w300
                          ),
                          ),
                          Text('1.1'
                            ,style: GoogleFonts.poppins(
                                color: AllColors.lightblackColor,
                                fontSize: AllFontSize.twentee,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: AllColors.primaryliteColor,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text('V.Name',style: GoogleFonts.poppins(
                              color: AllColors.lightblackColor,
                              fontSize: AllFontSize.fourtine,
                              fontWeight: FontWeight.w300
                          ),
                          ),
                          Text('1',style: GoogleFonts.poppins(
                              color: AllColors.lightblackColor,
                              fontSize: AllFontSize.twentee,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        color: AllColors.primaryliteColor,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Text('Service',style: GoogleFonts.poppins(
                              color: AllColors.lightblackColor,
                              fontSize: AllFontSize.fourtine,
                              fontWeight: FontWeight.w300
                          ),
                          ),
                          Text('24*7',style: GoogleFonts.poppins(
                              color: AllColors.lightblackColor,
                              fontSize: AllFontSize.twentee,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 300,
                left: 10,
                right: 10,
                child: Container(
                  height: MediaQuery.of(context).size.height - 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        listTileWidget('N',"Name",'Niraj'),
                        Divider(
                          height: 2,
                          color: AllColors.primaryliteColor,),
                        listTileWidget('M',"Mobile",'48715774'),
                        Divider(
                          height: 2,
                          color: AllColors.primaryliteColor,),
                        listTileWidget('C',"Class",'A'),
                        Divider(
                          height: 2,
                          color: AllColors.primaryliteColor,),
                        listTileWidget('M',"Medium",'Hindi'),
                        Divider(
                          height: 2,
                          color: AllColors.primaryliteColor,),

                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget listTileWidget(String letter,String title,String subtitle){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AllColors.primaryliteColor,
        child: Text(letter,style: GoogleFonts.poppins(
          color: AllColors.primaryDark1, // Text color
          fontWeight: FontWeight.w700,
        ),
        ),
      ),
      title: Text(title,
        style: GoogleFonts.poppins(
          color: AllColors.primaryliteColor,
          fontSize: AllFontSize.twelve,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(subtitle,
        style: GoogleFonts.poppins(
          color: AllColors.primaryDark1,
          fontSize: AllFontSize.fourtine,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AllColors.primaryDark1
        ),
        child: Icon(Icons.check_outlined,
          color: AllColors.customDarkerWhite,
          size: 12,),
      ),
    );

  }

}