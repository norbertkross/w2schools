import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class CourseCard extends StatelessWidget {
  static RandomColor _randomColor = RandomColor();

  final Color _color = _randomColor.randomColor();

  final String imagePath, course;

  CourseCard(this.imagePath, this.course);

  @override
  Widget build(BuildContext context) => Container(
        height: 70,
        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
        decoration: BoxDecoration(
            color: _color, borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                course,
                style: TextStyle(fontSize: 24.0, color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.all(0.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imagePath)),
              ),
              height: 75,
              width: 75,
            ),
          ],
        ),
      );
}
