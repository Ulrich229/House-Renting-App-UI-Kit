import 'package:flutter/material.dart';

import 'widgets/header_text.dart';
import 'widgets/house_item.dart';
import 'widgets/search_bar.dart';
import 'widgets/custom_animated_bottom_bar.dart';
import '../colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final pageViewConroller = PageController();
  final Map<String, String> bottomItems = {
    "Home": "assets/icons/dog-house.png",
    "BookMark": "assets/icons/bookmark.png",
    "Notifications": "assets/icons/bell.png",
    "Profil": "assets/icons/stick-man.png",
  };
  int pageIndex = 0;
  final Color _inactiveColor = marron;

  Widget _buildBottomBar(){
  return CustomAnimatedBottomBar( 
    containerHeight: 50,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    selectedIndex: pageIndex,
    curve: Curves.easeIn,
    onItemSelected: (index) => setState((){setState(() {
            pageIndex = index;
          });
          pageViewConroller.animateToPage(pageIndex,
              duration: Duration(milliseconds: 800), curve: Curves.decelerate);}),
    items: <BottomNavyBarItem>[
      BottomNavyBarItem(
        imagePath: 'assets/icons/dog-house.png',
        title: Text('Home'),
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        imagePath: 'assets/icons/bookmark.png',
        title: Text('BookMark'),
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        imagePath: 'assets/icons/bell.png',
        title: Text(
          'Notifications ',
        ),
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        imagePath: 'assets/icons/stick-man.png',
        title: Text('Profil'),
        inactiveColor: _inactiveColor,
        textAlign: TextAlign.center,
      ),
    ],
  );
}
  @override
  Widget build(BuildContext context) {
    final Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView(
              controller: pageViewConroller,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 15,
                    right: 15,
                  ),
                  height: deviceSize.height,
                  width: deviceSize.width,
                  child: Column(
                    children: [
                      HeaderText(),
                      SizedBox(
                        height: 20,
                      ),
                      SearchBar(),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        flex: 7,
                        child: SingleChildScrollView(child: Column(
                        children: [
                          HouseItem(imagePath: 'centerHouse.png', category: 'Charming', nbStars: 5, price: 36, reviews: 238),
                          SizedBox(height: 20,),
                          HouseItem(imagePath: 'leftHouse.png', category: 'Conforty', nbStars: 4, price: 28, reviews: 226),
                          SizedBox(height: 20,),
                          HouseItem(imagePath: 'rightHouse.png', category: 'Clasic', nbStars: 5, price: 64, reviews: 483)
                        ],
                      ),),),
                      
                    ],
                  ),
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                )
              ],
            ),
          ),
          Expanded(child: _buildBottomBar())
        ],
      ),
    );
  }
}
