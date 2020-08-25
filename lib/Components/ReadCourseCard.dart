import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class ReadCourseCard extends StatelessWidget {
  static RandomColor _randomColor = RandomColor();

  final Color _color = _randomColor.randomColor();

  final String imagePath, description;

  ReadCourseCard(this.imagePath, this.description);

  @override
  Widget build(BuildContext context) => Container(
        height: 130,
        width: 300,
        padding: EdgeInsets.all(15.0),
        margin: EdgeInsets.fromLTRB(20.0, 5.0, 0.0, 5.0),
        decoration: BoxDecoration(
            color: _color, borderRadius: BorderRadius.circular(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    description,
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: Text(
                        'Read now',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/023-graduation.png")),
              ),
              height: 80,
              width: 80,
            ),
          ],
        ),
      );
}
