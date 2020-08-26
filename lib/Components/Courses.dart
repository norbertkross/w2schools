import 'package:flutter/material.dart';
import 'package:w2schools/Components/CourseCard.dart';
import 'package:w2schools/Screens/courses/coursesHomeScreen.dart';
import 'package:w2schools/Screens/test.dart';

// courses widget
class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("Welcome Lee",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text("Courses:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 5,
        ),
        
        GestureDetector(
          onTap: (){navigateTOCourseHome();},
          child: CourseCard("assets/026-history.png", "Business"),
        ),
        GestureDetector(
          onTap: (){navigateTOCourseHome();},
          child:CourseCard("assets/049-psychology.png", "General Arts"),
        ),
        GestureDetector(
          onTap: (){navigateTOCourseHome();},
          child: CourseCard("assets/011-chemistry.png", "Science"),
        ),
        GestureDetector(
          onTap: (){navigateTOCourseHome();},
          child: CourseCard("assets/053-school.png", "Home Economics"),
        ),
        GestureDetector(
          onTap: (){navigateTOCourseHome();},
          child: CourseCard("assets/041-paintbrush.png", "Visual Arts"),
        ),                           
      ],
    );
  }

  // Navigate to Course Home
  void navigateTOCourseHome(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CoursesHomeScreen()));
  }

}
