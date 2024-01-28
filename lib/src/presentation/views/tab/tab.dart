import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/src/presentation/views/tab/home/home_page.dart';
import 'package:food_delivery/src/utils/resources/app_colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10.w),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(22.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.h),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: AppColors.c_53e88b,
              iconSize: 18.w,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColors.c_E9FAF2,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  textStyle: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff09051c),
                  ),
                  textColor: AppColors.textColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Likes',
                  textStyle: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff09051c),
                  ),
                  textColor: AppColors.textColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  textStyle: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff09051c),
                  ),
                  textColor: AppColors.textColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  textStyle: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff09051c),
                  ),
                  textColor: AppColors.textColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
