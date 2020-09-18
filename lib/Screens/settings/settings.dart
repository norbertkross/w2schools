import 'package:flutter/material.dart';
import 'package:w2schools/Components/TheColors.dart';

class SettingsUser extends StatefulWidget {
  @override
  _SettingsUserState createState() => _SettingsUserState();
}

class _SettingsUserState extends State<SettingsUser> {
  bool switch1 = false;
  bool switch2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_){
          _.disallowGlow();
          return false;
        },
        child: ListView(
          children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      color: TheColors.yellowOrange,
                      shape:BoxShape.circle,
                    ),
                    child: Center(
                      child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        // color: TheColors.indigo,
                        shape:BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/dope.jpg"))
                      ),
                      //child: ,
                  ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Lee Quaye",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Text("senior sarah@gmail.com",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                
                  SizedBox(height: 20,),

                  myReview(context,name: "John Doe",message: "Hello There")
                ],
              )
          ],),),
    );
  }


  Widget myReview(BuildContext context,{String name,String message,String time}){
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    margin: EdgeInsets.all(10),              
                    decoration: BoxDecoration(                  
                        boxShadow: [
                        BoxShadow(
                          color:Colors.green.withOpacity(0.2),
                          spreadRadius: 10,
                          blurRadius: 10,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),              
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container( 
                      color: Theme.of(context).canvasColor, 
                      child:Column(
                        children: [
                           
                           buildRow(name: "My Account",image: "assets/Group 282@3x.png"),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                             child: Divider(
                               thickness: 2,
                             ),
                           ),
                           buildRow(name: "Password Reset",image: "assets/Group 285@3x.png"),
                           buildSwitch(text: "Push Notifications",
                           switchValue: switch1,
                           onSwitch: (){
                             setState(() {
                               print("hello");
                               switch1 = ! switch1;
                             });
                           }),
                           buildSwitch(text: "Email Notifications",
                           switchValue: switch2,
                           onSwitch: (){
                             setState(() {
                               print("hello");
                               switch2 = ! switch2;
                             });
                           }),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                             child: Divider(
                               thickness: 2,
                             ),
                           ),                           
                           buildRow(name: "Security",image: "assets/Group 284@3x.png"),
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal:8.0),
                             child: Divider(
                               thickness: 2,
                             ),
                           ),                           
                           buildRow(name: "Log out",image: "assets/Group 283@3x.png"),
                           SizedBox(height: 20,) 
                        ],),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
            ],
          );
  }

  Widget buildRow({String image,String name, IconData icon,}){
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), 
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: Image.asset(image),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
                    child: Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), 
                      child: Container(
                        height: 50,
                        width: 50,
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color: Theme.of(context).unselectedWidgetColor,
                              child: Padding(
                                padding: const EdgeInsets.all(2.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color: Colors.white,
                                      child: Icon(Icons.arrow_forward,size: 15,color: Theme.of(context).unselectedWidgetColor,)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildSwitch({String text,String image,bool switchValue,Function onSwitch}){
      return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 18),
                    child: Text(" "+text,style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500),),
                  ),
                  animatedSwitch(
                    value: switchValue,
                    onSwitch:onSwitch,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }



  Widget animatedSwitch({bool value,Function onSwitch}){
    return GestureDetector(
      onTap:onSwitch,
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Container(
          child: Stack(
            children: [
               Container(
              height: 80,
              width: 45,
              child: Stack(
                children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 5,
                      width: 45,
                      color: value == true? Theme.of(context).accentColor: Theme.of(context).unselectedWidgetColor,
                    ),
                  ),
                ),              
                  Row(
                    mainAxisAlignment:value == true? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              color:value == true? Theme.of(context).accentColor: Theme.of(context).unselectedWidgetColor,
                              child: Padding(
                                padding: const EdgeInsets.all(2.5),
                                child: Padding(
                                  padding: const EdgeInsets.all(.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color: Theme.of(context).canvasColor,
                                      child: SizedBox(width: 15,height: 15,),
                                      // child: Icon(Icons.arrow_forward,size: 15,color: Theme.of(context).unselectedWidgetColor,)
                                      ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ],),
        ),
      ),
    );
  }

}