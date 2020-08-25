import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool _resultsSelected = true;
  bool _profileSelected = false;
  bool _helpSelected = false;

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    ResultsWidget(),
    ProfileWidget(),
    HelpWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
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
              style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold)),
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
                color: Color(0xff162975),
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
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
      child: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          subjectProgressIndicator("Core Maths", 0.4),
          subjectProgressIndicator("Science", 0.6),
          subjectProgressIndicator("Physics", 0.22),
          subjectProgressIndicator("Chemistry", 0.05),
          subjectProgressIndicator("English", 0.67),
          subjectProgressIndicator("Social Studies", 0.36)
        ],
      )),
    );
  }

  Widget subjectProgressIndicator(String subject, double percent) {
    // if percent is in decimal i.e 0.4
    double percentage = percent * 100;

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(subject,
            style: TextStyle(
                fontSize: 20,
                color: Color(0xff162975),
                fontWeight: FontWeight.w600)),
        Column(
          children: [
            LinearPercentIndicator(
              width: 140.0,
              lineHeight: 10.0,
              percent: percent,
              backgroundColor: Colors.grey.withOpacity(0.3),
              progressColor: Color(0xff162975),
            ),
            Text("$percentage complete",
                style: TextStyle(
                  color: Colors.blue,
                )),
          ],
        ),
      ]),
    );
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
      child: SingleChildScrollView(
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
                      color: Color(0xff162975),
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
        ),
      ),
    );
  }
}

// helpWidget
class HelpWidget extends StatefulWidget {
  @override
  _HelpWidgetState createState() => _HelpWidgetState();
}

class _HelpWidgetState extends State<HelpWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
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
        height: 370,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/help-button.png",
                height: 100,
                width: 100,
              ),
              Text("Chat with Teacher",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor)),
              SizedBox(
                height: 10,
              ),
              Text("0247205609",
                  style: TextStyle(fontSize: 17.0, color: Color(0xff162975))),
              Divider(
                color: Color(0xff162975),
              ),
              Image.asset(
                "assets/help-button.png",
                height: 100,
                width: 100,
              ),
              Text("Help Line",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor)),
              SizedBox(
                height: 10,
              ),
              Text("0247205609",
                  style: TextStyle(fontSize: 17.0, color: Color(0xff162975))),
            ],
          ),
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
            color: selected ? Colors.white : Color(0xff162975),
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text,
              style: TextStyle(
                  fontSize: 20.0,
                  color: selected ? Color(0xff162975) : Colors.white)),
        ),
      ),
    );
  }
}
