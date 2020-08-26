import 'package:flutter/material.dart';
import 'package:w2schools/Components/ReadCourseCard.dart';
import 'package:w2schools/Components/SubjectCard.dart';
import 'package:w2schools/Screens/test.dart';

// dashboard
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("My Dashboard",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: screenWidth - 40,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xfff3f3f3),
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your subject',
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0.0),
                      child: Icon(
                        Icons.search,
                        // color: Colors.blue,
                      ),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 13.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: _getCourses())),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("My subject",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("View All")
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){navigateTOhomepage();},
                        child: SubjectCard("assets/027-language.png", "Core Maths")),
                      GestureDetector(
                        onTap: (){navigateTOhomepage();},
                        child: SubjectCard("assets/045-physics.png", "Science")),
                      GestureDetector(
                        onTap: (){navigateTOhomepage();},
                        child: SubjectCard("assets/040-open-book.png", "English")),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){navigateTOhomepage();},                        
                        child: SubjectCard("assets/016-document.png", "Social Studies")),
                      GestureDetector(
                        onTap: (){navigateTOhomepage();},
                        child: SubjectCard("assets/019-eyeglass.png", "Physics")),
                      GestureDetector(
                        onTap: (){navigateTOhomepage();},
                        child: SubjectCard("assets/011-chemistry.png", "Chemistry")),
                    ],
                  ),
                ],
              ))
        ]);
  }

  // Navigate to Test Page
  void navigateTOhomepage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TestPage()));
  }

  // populate ReadCourseCard with course details
  List<Widget> _getCourses() {
    List<ReadCourseCard> courses = [
      ReadCourseCard(
          'assets/dope.jpg', 'Learn how to learn fast and remeber 90% '),
      ReadCourseCard(
          'assets/dope.jpg', 'Learn how to learn fast and remeber 90% '),
      ReadCourseCard(
          'assets/dope.jpg', 'Learn how to learn fast and remeber 90% '),
      ReadCourseCard(
          'assets/dope.jpg', 'Learn how to learn fast and remeber 90% ')
    ];

    return courses;
  }
}