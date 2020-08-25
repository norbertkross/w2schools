import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w2schools/Components/question_Content.dart';
import 'package:w2schools/Components/reuseable_card.dart';
import 'package:w2schools/Components/constants.dart';

enum Cards {
  cardOne,
  cardTwo,
  cardThree,
  cardFour,
}

//Color colorToBeUsed;

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  Cards selectedCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.clear,
          color: KIconColor,
          size: 30,
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: -1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 1.5, 0, 0),
              child: Center(
                child: Text(
                  '1 of 20',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: counter,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: -1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 35, 10),
              child: Center(
                child: Text(
                  'How many basic Steps are there in The Scientific Method ?',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: questionColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        //We change the color of digit and DigitText
                        selectedCard = Cards.cardOne;
                      });
                    },
                    colour: selectedCard == Cards.cardOne
                        ? kSelectedCardColor
                        : kDefaultCardBorderColor,
                    cardChild: ReuseableCardChild(
                      onPress: (){
                        setState(() {
                          selectedCard= Cards.cardOne;
                        });
                      },
                      digitTextColour: selectedCard == Cards.cardOne ? kSelectedCardColor : digitTextColor,
                      digitColour: selectedCard == Cards.cardOne ? kSelectedCardColor : digitColor,
                      digit: 1,
                      text: 'One',

                    ),

                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        //We change the color of digit and DigitText
                        selectedCard = Cards.cardTwo;
                      });
                    },
                    colour: selectedCard == Cards.cardTwo
                        ? kSelectedCardColor
                        : kDefaultCardBorderColor,
                    cardChild: ReuseableCardChild(
                      onPress: (){
                        setState(() {
                          selectedCard= Cards.cardTwo;
                        });
                      },
                      digitTextColour: selectedCard == Cards.cardTwo ? kSelectedCardColor : digitTextColor,
                      digitColour: selectedCard == Cards.cardTwo ? kSelectedCardColor : digitColor,
                      digit: 2,
                      text: 'Two',
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        //We change the color of digit and DigitText
                        selectedCard = Cards.cardThree;
                      });
                    },
                    colour: selectedCard == Cards.cardThree
                        ? kSelectedCardColor
                        : kDefaultCardBorderColor,
                    cardChild: ReuseableCardChild(
                      onPress: (){
                        setState(() {
                          selectedCard= Cards.cardThree;
                        });
                      },
                      digitTextColour: selectedCard == Cards.cardThree ? kSelectedCardColor : digitTextColor,
                      digitColour: selectedCard == Cards.cardThree ? kSelectedCardColor : digitColor,
                      digit: 3,
                      text: 'Three',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    onPress: () {
                      setState(() {
                        //We change the color of digit and DigitText
                        selectedCard = Cards.cardFour;
                      });
                    },
                    colour: selectedCard == Cards.cardFour
                        ? kSelectedCardColor
                        : kDefaultCardBorderColor,
                    cardChild: ReuseableCardChild(
                      onPress: (){
                        setState(() {
                          selectedCard= Cards.cardFour;
                        });
                      },
                      digitTextColour: selectedCard == Cards.cardFour ? kSelectedCardColor : digitTextColor,
                      digitColour: selectedCard == Cards.cardFour ? kSelectedCardColor : digitColor,
                      digit: 4,
                      text: 'Four',
                    ),
                  ),
                ),
              ],
            ),
          ),

//                CONTINUE BUTTON

          Expanded(
                  flex: 1,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 13, 10, 35),
//                    margin: EdgeInsets.fromLTRB(20, 5, 25, 85),
              height: 60.0,
              child: Material(
                borderRadius: BorderRadius.circular(35.0),
                color: kButtonColor,
                elevation: 7.0,
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Continue     >',
                      style: TextStyle(
                          color: Colors.white,
//                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
