import 'package:flutter/material.dart';
import 'package:w2schools/Components/Courses.dart';
import 'package:w2schools/Components/Dashboard.dart';
import 'package:w2schools/Screens/UserScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bottom navigation bar index for widget to display
  int _bottomNavIndex = 0;

  List<Widget> _widgetOptions = <Widget>[Dashboard(), Courses(), UserScreen()];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/adinkra_pattern-5.png"),
            fit: BoxFit.cover,
          ),
        ),
        // changes content based on current bottom navigation selected
        child: _widgetOptions[_bottomNavIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: BottomNavigationBar(
            currentIndex: _bottomNavIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.red,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Theme.of(context).primaryColor),
                  title: Text(
                    "",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard,
                      color: Theme.of(context).primaryColor),
                  title: Text(
                    "",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle,
                      color: Theme.of(context).primaryColor),
                  title: Text(
                    "",
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none,
                      color: Theme.of(context).primaryColor),
                  title: Text(
                    "",
                  )),
            ]),
      ),
    );
  }

  _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }
}




