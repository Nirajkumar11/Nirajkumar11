import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_font_size.dart';
import '../../view_model/dashBoard_viewModel/DashBoard_Vm.dart';

class DashBoardScreen extends StatelessWidget{
  DashBoardScreen({super.key});

  Size size = Get.size;

  final DashBoardVMController=Get.put(DashBoardViewModel());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Stack(
                // alignment: Alignment.center,
                children: [
                  Container(
                    height: size.height * 0.40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          ),
                          child: Image.asset(
                            "assets/images/splash_screen.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 30,
                          top: 50,
                          child: Container(
                            // padding: EdgeInsets.only(right: 8),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: [
                                  BoxShadow(
                                      color: AllColors.whiteColor
                                          .withValues(alpha: 0.5),
                                      spreadRadius: 10,
                                      blurRadius: 0,
                                      offset: Offset(0, 3),
                                      blurStyle: BlurStyle.solid)
                                ] // Change to make the container circular

                              //color: Colors.black, // Assuming AllColors.lightblackColor is defined as a color constant
                            ),
                            child: Image.asset(
                              "assets/images/logo-removebg-preview.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 10,
                          child: Text(
                            "Welcome Home ",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: AllFontSize.twenteetwo,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80,
                          left: 10,
                          child:
                          Container(
                            width: size.width*.63,
                            child: Text('Tushar Vishwas',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),

                              ///overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ),
                        PageView.builder(
                          controller: DashBoardVMController.pageController,
                         // itemCount: 5,
                          itemBuilder: (context, index) {
                            final displayIndex = index % DashBoardVMController.imgList.length;
                            return Center(
                              child: Container(
                                margin: EdgeInsets.only(top: 100),
                                height: size.width*.45,
                                  width: size.width*.8,
                                  child: DashBoardVMController.imgList[displayIndex])
                            );
                          },
                        )
                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0,top: 5,left:15),
                child: Text(
                  "What are you looking for? ",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: AllFontSize.fourtine,
                  ),
                ),
              ),

              Container(
                height: size.height*.45,
                width: double.infinity,
                child: GridView(
                  padding: const EdgeInsets.all(16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  children: DashBoardVMController.imageDataList.map((imageData) {
                    return Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: DashBoardVMController.getRandomColor(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            imageData.description,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: 8),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: Image.asset(imageData.imagePath)),
                        ],
                      ),
                    );
                  }).toList(),

          ),
        )
            ],
        ),
        ),
      ),
    );
  }
  
  
}

