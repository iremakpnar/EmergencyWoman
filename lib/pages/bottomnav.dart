import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:emergencywoman/pages/map.dart';
import 'package:flutter/material.dart';
import 'package:emergencywoman/pages/homepage.dart';
import 'package:emergencywoman/pages/profile.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late MapScreen maps;
  late Profile profile;

  @override
  void initState() {
    homepage = Home();
    profile = Profile();
    maps = MapScreen();
    pages = [homepage, maps, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Color(0xff622c4f),
          color: Color(0xffcb5579),
          animationDuration: Duration(milliseconds: 350),
          onTap: (int index){
            setState(() {
              currentTabIndex=index;
            });
          },
          items: [
            Icon(
              Icons.home, size: 40
            ),
            Image.asset('icons/map.png', width: 40.0, height: 40.0),
            Icon(
                Icons.account_circle, size: 40
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}




