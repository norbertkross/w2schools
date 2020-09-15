import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w2schools/Components/constants.dart';
import 'package:w2schools/Components/TheColors.dart';

class QuizSuccess extends StatefulWidget {
  @override
  _QuizSuccessState createState() => _QuizSuccessState();
}

class _QuizSuccessState extends State<QuizSuccess> {
  int correctScores = 18;
  int totalQuestions = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kQuizSuccessPageBGColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Ink.image(
                image: AssetImage('assets/Mask Group 43.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child:Container(
//              margin: EdgeInsets.fromLTRB(10, 60, 10, 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'SUCCESS !!!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            'You scored: ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            ' $correctScores/$totalQuestions',
                            style: TextStyle(
                              color: TheColors.yellowOrange,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 60.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 60.0,
                          child: Material(
                            borderRadius: BorderRadius.circular(85.0),
                            shadowColor: Colors.greenAccent,
                            color: TheColors.yellowOrange,
                            elevation: 3.0,
                            child: Center(
                              child: Text(
                                'Results     >',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 27),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),),
            Expanded(
              child: Ink.image(
                image: AssetImage('assets/Group 272.png'),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
