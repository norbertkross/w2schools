import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'package:w2schools/Screens/TestButton/TestButton.dart';


class CoursesHomeScreen extends StatefulWidget {
  /// A class that presents a user with the list of subjects based on the
  /// course he is reading.
  @override
  _CoursesHomeScreenState createState() => _CoursesHomeScreenState();
}

class _CoursesHomeScreenState extends State<CoursesHomeScreen> {
  var _about = 
  "This department is in charge of all science related courses.General Science, Agricultural "
  + "Science and Mixed-Electives option. The department makes all provisions in terms of books"
  + " and facilities like Laboratory available to make learning a better experience for student";

  var _coreCourses ="Integrated Science \n" +  "Mathematics \n" + "English \n" + "Social Studies";
  var _electiveCourses = "Elective MatheMatics\n" + "Physics\n" + "Chemistry\n" + 
  "Biology/ Geography/ ICT";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
            // Stack(children: <Widget>[
      Align(
      alignment: Alignment.topCenter,
          child: Container(
          padding: EdgeInsets.only(top:40),
          width: MediaQuery.of(context).size.width,
          // color: Colors.grey,
          height: MediaQuery.of(context).size.height * 0.30,
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(image: AssetImage('asset/Color-2.png'),
            fit: BoxFit.fill)
          ),
          child: Column(
            children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,),
                    label: Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                      )),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Science",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ])),
            ),
      Positioned(
        top: 180,
        left: 0,
        right: 0,
        child: Container(
        // height: MediaQuery.of(context).size.height * 0.70,
        decoration: BoxDecoration(
          color: Colors.white,
            // image: DecorationImage(
            //     // image: AssetImage('asset/adinkra_pattern-8.png'),
            //     fit: BoxFit.fill),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))
                ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              // padding: EdgeInsets.only(right: 300.0),
              margin: EdgeInsets.only(left: 15.0, top: 5.0),
              child: Row(
                children: <Widget>[
                  Text(
                  "About:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blue
                  ),
                  ),
                ],
              )),
            Container(
              padding: EdgeInsets.only(left: 15.0, right:15.0),
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                _about,
                style: TextStyle(
                  fontSize: 17.0
                ),),
            ),
            SizedBox(height: 10.0,),
            Container(
              // padding: EdgeInsets.only(right: 200.0),
              margin: EdgeInsets.only(left: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                  "Core:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.blue
                  ),
                  ),
                ],
              )),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        _coreCourses,
                        style: TextStyle(
                          fontSize: 17.0
                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Text("Electives:",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Elective Mathematics",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),),
                        ],
                      ),
                        Row(
                          children: <Widget>[
                            Text("Physics",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("Chemistry",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("Biology/ Geography/ ICT",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),),
                          ],
                        )
                    ],
                  ),
                ),
                SizedBox(height: 15.0,),
                ReUseButtonWithTextAndArrow(label: "Start", onTap: (){})
          ],
        ),
          ),
      ),   
            // ]
            // )
          ],
        ),
    );
  }
}
