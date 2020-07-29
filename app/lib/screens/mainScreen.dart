import 'package:app/models/scoped_model/foodScopedModel.dart';
import 'package:app/models/scoped_model/mainModel.dart';
import 'package:app/screens/pages/exploreScreen.dart';
import 'package:app/screens/pages/homeScreen.dart';
import 'package:app/screens/pages/orderScreen.dart';
import 'package:app/screens/pages/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class MainScreen extends StatefulWidget {
  final MainModel mainModel;
  MainScreen({this.mainModel});
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  HomeScreen homeScreen;
  OrderScreen orderScreen;
  ProfileScreen profileScreen;
  ExploreScreen exploreScreen;

  //List of pages
  List<Widget> pages;
  Widget currentPage;

  @override
  void initState() {
    super.initState();
    // widget.foodModel.fetchFoods();
    widget.mainModel.fetchFoods();
    homeScreen = HomeScreen();
    orderScreen = OrderScreen();
    profileScreen = ProfileScreen();
    exploreScreen = ExploreScreen();
    pages = [homeScreen, exploreScreen, orderScreen, profileScreen];
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
                  EvaIcons.compassOutline,
                  color: Colors.green,
                ),
                activeIcon: Icon(
                  EvaIcons.compass,
                  color: Colors.green,
                ),
                title: Text("Explore")),
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
