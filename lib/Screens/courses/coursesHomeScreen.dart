import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'package:w2schools/Screens/courses/courseOne.dart';


class CoursesHomeScreen extends StatefulWidget {
  /// A class that presents a user with the list of subjects based on the
  /// course he is reading.
  @override
  _CoursesHomeScreenState createState() => _CoursesHomeScreenState();
}

class _CoursesHomeScreenState extends State<CoursesHomeScreen> {
  var _about = 
  "Agricultural This department is in charge of all science related courses.General Science, Agricultural "
  + "Science and Mixed-Electives option. The department makes all provisions in terms of books"  
  + " and facilities like Laboratory available to make learning a better experience for student"
  + " and facilities like Laboratory available to make learning a better experience for student"
  ;

  var _coreCourses ="Integrated Science \n" +  "Mathematics \n" + "English \n" + "Social Studies";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
            // Stack(children: <Widget>[
      Container(
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
                onPressed: () {
                  Navigator.of(context).pop();
                },
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
      Expanded(
          child: ListView(
          children: <Widget>[
            Container(
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
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 10.0),
                  child: ReUseButtonWithTextAndArrow(label: "Start", onTap: (){navigateTOhomepage();})),
                  SizedBox(height: 30.0,),
          ],
        ),
      ),   
            // ]
            // )
          ],
        ),
    );
  }

  // Navigate to Course one Page
  void navigateTOhomepage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CourseOneScreen()));
  }

}
