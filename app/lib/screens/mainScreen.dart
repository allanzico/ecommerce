import 'package:app/screens/pages/favoriteScreen.dart';
import 'package:app/screens/pages/homeScreen.dart';
import 'package:app/screens/pages/orderScreen.dart';
import 'package:app/screens/pages/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  HomeScreen homeScreen;
  OrderScreen orderScreen;
  ProfileScreen profileScreen;
  FavoriteScreen favoriteScreen;

  //List of pages
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    homeScreen = HomeScreen();
    orderScreen = OrderScreen();
    profileScreen = ProfileScreen();
    favoriteScreen = FavoriteScreen();
    pages = [homeScreen, orderScreen, favoriteScreen, profileScreen];
    currentPage = homeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            //Change pages
            setState(() {
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.homeOutline,
                  color: Colors.green,
                ),
                activeIcon: Icon(
                  EvaIcons.home,
                  color: Colors.green,
                ),
                title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.shoppingBagOutline,
                  color: Colors.green,
                ),
                activeIcon: Icon(
                  EvaIcons.shoppingBag,
                  color: Colors.green,
                ),
                title: Text("Orders")),
            BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.heartOutline,
                  color: Colors.green,
                ),
                activeIcon: Icon(
                  EvaIcons.heart,
                  color: Colors.green,
                ),
                title: Text("Favorite")),
            BottomNavigationBarItem(
                icon: Icon(
                  EvaIcons.personOutline,
                  color: Colors.green,
                ),
                activeIcon: Icon(
                  EvaIcons.person,
                  color: Colors.green,
                ),
                title: Text("Profile"))
          ]),
      body: currentPage,
    );
  }
}
