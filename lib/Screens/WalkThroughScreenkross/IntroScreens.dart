import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'package:w2schools/app_state/walkthroughState.dart';

class MainIntroScreen extends StatefulWidget {
  @override
  _MainIntroScreenState createState() => _MainIntroScreenState();
}

class _MainIntroScreenState extends State<MainIntroScreen> {
  int currentIndex = 0;
  PageController _pageController = PageController(keepPage: false,initialPage: 0);
  final List<PicureAndText> items = [
    PicureAndText(pictureUrl: "asset/nsmq.png",largeText: "Study In Safety",smallText: "Enroll in courses from the comfort \n                 of your home "),
    PicureAndText(pictureUrl: "asset/student_book.png",largeText: "Download Study Materials",smallText: "Get all your study materials right \n               on your device"),
    PicureAndText(pictureUrl: "asset/student_female.png",largeText: "It's Easy & Convenient",smallText: "Stay safe and learn"),

    ];



@override
  void initState(){
    Timer.periodic(Duration(seconds: 2), (_){
      if(currentIndex <=2){
    _pageController.animateToPage(currentIndex, duration: Duration(seconds: 1),curve: Curves.easeIn);
        currentIndex++;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final walkThroughState = Provider.of<WalkThroughState>(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                   width: 500,
                  height: 440,
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (_){
                      _.disallowGlow();
                      return false;
                    },
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (_){
                        setState(() {
                          currentIndex = _ ;
                        });
                      },
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){                                    
                      return Container(
                        child: Column(
                          children: [
                            
                          // Space On Top Of  Circle 
                            SizedBox(height:5,),

                            // Circle and Picture 
                            // Container(    
                            //   height: 250,
                            //   width: 250,                                               
                            //   decoration: BoxDecoration(
                            //     shape: BoxShape.circle,
                            //     color: TheColors.yellowOrange,
                            //   ),
                            //   child:
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(  
                                  height:250,                    
                                  width: 250,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(items[index].pictureUrl))
                                ),
                            ),
                              ),

                            //),

                            // The Texts Section

                            SizedBox(height: 20,),
                            Wrap(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(items[index].largeText,style: TextStyle(color: Colors.grey,fontSize: 22,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:40.0),
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                // verticalDirection: VerticalDirection.down,
                                 runAlignment: WrapAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Text(items[index].smallText,style: TextStyle(color: Colors.grey,fontSize: 18,),),
                                  ),
                                ],
                              ),
                            ),

                          // // Space Before Small Dots
                          // SizedBox(height: 30,),

                          ],
                        ),
                      );                  
                      }),
                  ),
                ),

                  // Small Dots At The Bottom
                     Wrap(
                       direction: Axis.horizontal,
                       children: [
                        for (int i =0 ; i<=2; i++) Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(    
                                height: 15,
                                width: 15,                                               
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(                      
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:currentIndex == i?Colors.grey: Colors.white,
                                  ),
                                  
                              ),
                                ),
                              ),
                        ),
                       ],
                     ),

                   // The Get Started Button  

                   SizedBox(height: 60,), 
                   ReUseButtonWithTextAndArrow(label: "Get Started", 
                   onTap: (){
                     
                     // Move to home Screen
                     // set a preference that the user has passed here so that the next time they do not see this screen
                     walkThroughState.setPrefs(true);
                     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>
                     
                     // TODO replace this class with home screen
                     Scaffold(
                      body: Container(
                        child: Center(child: Text("Login / Homepage"),),
                      ),
                      )
                     // 
                ));
                   }),

              ],
            ),
          )
        ],
      ),
    );
  }
}


class PicureAndText{
  String largeText;
  String smallText;
  String pictureUrl;
  
  PicureAndText({
    this.pictureUrl,
    this.largeText,
    this.smallText
  });
}