import 'package:flutter/material.dart';
import 'package:w2schools/Components/sizeConfig.dart';
import '../../Components/sizeConfig.dart';

class CourseOneScreen extends StatefulWidget {
  /// This class presents a list of video material based on the
  /// selected course being read.
  @override
  _CourseOneScreenState createState() => _CourseOneScreenState();
}

class _CourseOneScreenState extends State<CourseOneScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var videoMinutes = "18 mins";
    var courseTitle = "Intro to Core Maths";
    var professorName = "Professor Ato";
    var subjectTutored = "Math Teacher";

    return Scaffold(
      body: Column(
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: SizeConfig.blockSizeVertical * 30,
            child: Image(image: AssetImage('')),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                ),
                child: Text("Video> $videoMinutes"),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "$courseTitle",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.file_download,
                  size: 22.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Card(
              color: Theme.of(context).scaffoldBackgroundColor,
              elevation: 0.0,
              child: ListTile(
                leading: Image(
                    image: AssetImage(
                        'asset/20170412_hbs-black-business-leaders_a1313_605_main.png')),
                title: Text("$professorName"),
                subtitle: Text("$subjectTutored"),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView(
              addRepaintBoundaries: false,
              // physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              // reverse: true,
              shrinkWrap: true,
              children: <Widget>[
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    dense: false,
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  shape: Border(
                      bottom: BorderSide(
                          width: 0.5, color: Theme.of(context).dividerColor)),
                  elevation: 0.0,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
                Card(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: ListTile(
                    leading: Icon(Icons.video_label),
                    title: Text("Introduction to Core Maths"),
                    subtitle: Text("Video- Part 1"),
                    trailing: Text("35:00"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
