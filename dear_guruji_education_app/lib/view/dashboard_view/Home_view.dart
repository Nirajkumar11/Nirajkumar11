import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../constants/app_colors.dart';
import '../../session_management/session_management_controller.dart';
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

  late int _currentIndex;
  late Widget _currentPage;
  bool isSecondGridViewVisible = false;

  @override
  void initState() {
    super.initState();

    _page1_dashboard = DashBoardScreen();
    _page2_notification = ProfileView();
    _page3_profile = ProfileView();

    _pages = [_page1_dashboard, _page2_notification, _page3_profile];

    _currentIndex = 0;
    _currentPage = _page1_dashboard;


    //MenuList();
  }


  void changeTab(int index) {
    setState(() {
      if (index == 0) {
        _currentIndex = index;
        _currentPage = _pages[index];
        isSecondGridViewVisible = false; // Hide the second GridView
      } else if (index == 1) {
       // _showBottomSheet(context);
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


}