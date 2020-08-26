import 'package:flutter/material.dart';
import 'package:w2schools/Components/Courses.dart';
import 'package:w2schools/Components/Dashboard.dart';
import 'package:w2schools/Components/TheColors.dart';
import 'package:w2schools/Components/constants.dart';
import 'package:w2schools/Screens/UserScreen.dart';

import 'notifications.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // bottom navigation bar index for widget to display
  int _bottomNavIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Dashboard(), 
    Courses(), 
    UserScreen(), 
    NotificationPage()];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: _bottomNavIndex == 3? 
      AppBar(
        leading: Container(),
        title: Text("Notifications",style: kNotificationTitleStyle,),
        centerTitle: true,
        ):
       PreferredSize(preferredSize: Size(MediaQuery.of(context).size.width, 0.01),
      child: Container(),),
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            Container(
              height: screenHeight / 4.5,
              color: Theme.of(context).primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30),
                  DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Lee Quaye",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Menu",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                title: Text(
                  "Profile",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {}),
            Divider(
              color: Color(0xff162975),
            ),
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                title: Text(
                  "Results",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {}),
            Divider(
              color: Color(0xff162975),
            ),
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                title: Text(
                  "Settings",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {}),
            Divider(
              color: Color(0xff162975),
            ),
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                title: Text(
                  "Help",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {}),
            Divider(
              color: Color(0xff162975),
            ),
            ListTile(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                title: Text(
                  "Report",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
                onTap: () {}),
            Divider(
              color: Color(0xff162975),
            ),
          ],
        ),
      ),
      body: Container(
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/adinkra_pattern-5.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              _bottomNavIndex == 0 || _bottomNavIndex == 1
                  ? _topNavBar()
                  : _bottomNavIndex == 2
                      ? _settingsIcon()
                      : SizedBox(
                          height: 1,
                        ),
              // changes content based on current bottom navigation selected
              _widgetOptions[_bottomNavIndex],
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottomNavIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: _bottomNavIndex == 0? TheColors.yellowOrange: Colors.black45),
                title: Text(
                  "",
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard,
                    color:  _bottomNavIndex == 1? TheColors.yellowOrange: Colors.black45),
                title: Text(
                  "",
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle,
                    color:  _bottomNavIndex == 2? TheColors.yellowOrange: Colors.black45),
                title: Text(
                  "",
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none,
                    color:  _bottomNavIndex == 3? TheColors.yellowOrange: Colors.black45),
                title: Text(
                  "",
                )),
          ]),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  _topNavBar() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
              onTap: () => _scaffoldKey.currentState.openDrawer(),
              child: Image.asset("assets/menu.png", height: 30, width: 30)),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage("assets/dope.jpg")),
            ),
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }

  _settingsIcon() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.settings,
            size: 25,
          )
        ],
      ),
    );
  }
}
