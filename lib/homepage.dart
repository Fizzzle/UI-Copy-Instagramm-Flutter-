import 'package:flutter/material.dart';
import 'package:instagramm_ui/pages/account.dart';
import 'package:instagramm_ui/pages/home.dart';
import 'package:instagramm_ui/pages/reels.dart';
import 'package:instagramm_ui/pages/search.dart';
import 'package:instagramm_ui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // разные страницы при клике
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomNavBar,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: "reels"),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ]),
    );
  }
}
