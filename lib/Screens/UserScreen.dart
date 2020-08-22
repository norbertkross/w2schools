import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool _resultsSelected = true;
  bool _profileSelected = false;
  bool _helpSelected = false;

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[ResultsWidget(), ProfileWidget()];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/dope.jpg")),
                ),
                height: 120,
                width: 120,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Lee Quaye",
                  style:
                      TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text("Sign Out",
                  style: TextStyle(
                      fontSize: 20.0, color: Theme.of(context).primaryColor)),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundText(_resultsSelected, "Results", () {
                      setState(() {
                        _resultsSelected = true;
                        _profileSelected = false;
                        _helpSelected = false;

                        _selectedIndex = 0;
                      });
                    }),
                    RoundText(_profileSelected, "Profile", () {
                      setState(() {
                        _resultsSelected = false;
                        _profileSelected = true;
                        _helpSelected = false;
                        _selectedIndex = 1;
                      });
                    }),
                    RoundText(_helpSelected, "Help", () {
                      setState(() {
                        _resultsSelected = false;
                        _profileSelected = false;
                        _helpSelected = true;
                        _selectedIndex = 2;
                      });
                    })
                  ],
                ),
              ),
              _widgetOptions[_selectedIndex]
            ],
          ),
        ),
      ),
    );
  }
}

// resultsWidget
class ResultsWidget extends StatefulWidget {
  @override
  _ResultsWidgetState createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends State<ResultsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 350,
        child: Column(
          children: [],
        ));
  }
}

// profileWidget
class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 350,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Leslie Quaye',
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white70,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Accra, Ghana',
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white70,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ex@gmail.com',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white70,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '0214536578',
                  prefixIcon: Icon(
                    Icons.contact_phone,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white70,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Change Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white70,
                ),
              ),
            ),
            InkWell(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Save",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      SizedBox(width: screenWidth / 4),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}

class RoundText extends StatelessWidget {
  final String text;
  final bool selected;
  final Function changeSelect;

  RoundText(this.selected, this.text, this.changeSelect);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeSelect,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.blue,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text,
              style: TextStyle(
                  fontSize: 20.0,
                  color: selected ? Colors.blue : Colors.white)),
        ),
      ),
    );
  }
}
