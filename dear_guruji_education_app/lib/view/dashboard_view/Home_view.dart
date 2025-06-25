import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_font_size.dart';
import '../../constants/font_weight.dart';
import '../../session_management/session_management_controller.dart';
import '../../view_model/dashBoard_viewModel/DashBoard_Vm.dart';
import '../profile_view/profile_view.dart';
import 'DashBoardScreen.dart';

class HomePageScreen extends StatefulWidget{

  HomePageScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageScreenState();

}

class _HomePageScreenState extends State<HomePageScreen> {

  SessionManagement sessionManagement = SessionManagement();
  //final DashboardVM controller = Get.put(DashboardVM());
  //final NotificationVM notification_pageController = Get.put(NotificationVM());
 // List<Menu> globalMenuList = [];
 // List<Children> globalchildList = [];

  late List<Widget> _pages;
  late Widget _page1_dashboard;
  late Widget _page2_notification;
  late Widget _page3_profile;
  late List<ImageData> menuBottomList;

  late int _currentIndex;
  late Widget _currentPage;
  bool isSecondGridViewVisible = false;

  List<Color> colors = [Colors.blue[700]!, Colors.amber[700]!, Colors.pink[700]!, Colors.green[700]!, Colors.amber[700]!, Colors.blue[700]!];

  int currentColorIndex = 0;


  @override
  void initState() {
    super.initState();

    _page1_dashboard = DashBoardScreen();
    _page2_notification = ProfileView();
    _page3_profile = ProfileView();

    _pages = [_page1_dashboard, _page2_notification, _page3_profile];

    _currentIndex = 0;
    _currentPage = _page1_dashboard;

    menuBottomList = [
      ImageData(
        imagePath: "assets/images/collections.png",
        name: "Image 1",
        description: "NCERT Books (English Medium)",
      ),
      ImageData(
        imagePath: "assets/images/customer.png",
        name: "Image 2",
        description: "NCERT Books (Hindi Medium)",
      ),
      ImageData(
        imagePath: "assets/images/customer.png",
        name: "Image 2",
        description: "NCERT Solutions",
      ),
      ImageData(
        imagePath: "assets/images/customer-support.png",
        name: "Image 4",
        description: "NCERT Notes",
      ),
      ImageData(
        imagePath: "assets/images/distributor_ipt.png",
        name: "Image 5",
        description: "NCERT Videos",
      ),
      ImageData(
        imagePath: "assets/images/ipt_list.png",
        name: "Image 6",
        description: "CBSE Papers",
      ),

      // add more images here...
    ];


    //MenuList();
  }

  void changeColor(){
    setState(() {
      currentColorIndex = (currentColorIndex + 1)%colors.length;
    });
  }


  void changeTab(int index) {
    setState(() {
      if (index == 0) {
        _currentIndex = index;
        _currentPage = _pages[index];
        isSecondGridViewVisible = false; // Hide the second GridView
      } else if (index == 1) {
        _showBottomSheet(context);
      } else {
        index = index - 1;
        _currentIndex = index;
        _currentPage = _pages[index];
        isSecondGridViewVisible = false;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentPage,
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          items: [

            Icon(
              Icons.dashboard,
              size: 30,
              color: Colors.white,
            ),
            Icon(Icons.menu, size: 30),
            Stack(children: [
              Icon(Icons.notifications, size: 30),
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration:  BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),

                ),
              )
            ]),

            Icon(Icons.person, size: 30),
          ],
          buttonBackgroundColor: AllColors.primaryDark1,
          height: 60,
          animationCurve: Curves.easeInOut,
          backgroundColor: AllColors.primaryDark1,
          color: Colors.black12,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (int index) => setState(() {
            changeTab(index);
          }),
        ),
      ),

    );
  }

  void _showBottomSheet(BuildContext context){
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3.0,
                            offset: Offset(0.0, 0.55)
                        )
                      ],
                      color: Colors.white
                  ),
                  child: Column(
                    children: [
                      Container(
                          color: Colors.grey,
                          margin:EdgeInsets.only(left: 0,right: 0,top: 15,bottom: 0),
                          height: 5,
                          width:100
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0,right: 0,bottom: 10,top: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                size: 35,
                                color: AllColors.primaryDark1,
                              ),
                              onPressed: () {

                                // Dismiss the bottom sheet when cancel icon is clicked
                              },
                            ),
                            Text(
                              "All Courses",
                              style: TextStyle(
                                color: AllColors.primaryDark1,
                                fontSize: AllFontSize.titleSize,
                                fontWeight: AllFontWeight.title_weight,
                                fontFamily: "Ageo Persona",
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.cancel,
                                size: 35,
                                color: AllColors.primaryDark1,
                              ),
                              onPressed: () {

                                // Dismiss the bottom sheet when cancel icon is clicked
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: MediaQuery.of(context).size.height * 0.34,
                width: double.infinity,
                child: GridView(
                  padding: const EdgeInsets.all(16.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  children: menuBottomList.map((imageData) {
                    return Container(
                      padding: const EdgeInsets.all(18.0),
                      decoration: BoxDecoration(
                        color: colors[menuBottomList.indexOf(imageData) % colors.length],
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
              ),
            ],
          ),
        ));
  }


}