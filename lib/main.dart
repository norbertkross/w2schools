import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:w2schools/Screens/HomeScreen.dart';
import 'package:w2schools/Screens/WalkThroughScreenkross/IntroScreens.dart';
import 'package:w2schools/app_state/walkthroughState.dart';

import 'Screens/SignIn/signInHomeScreen.dart';
//import 'package:w2schools/Screens/test.dart';


void main() {
  runApp(    
        MultiProvider(
      
      providers: [

        ChangeNotifierProvider<WalkThroughState>(create: (context) =>  WalkThroughState()),

     // Put The New State Class you create
    //  ChangeNotifierProvider<YourNewStateClass>(create: (context) =>  YourNewStateClass()),                
    
      ],
    child: MyApp()),
    );
}

class MyApp extends StatelessWidget {
  static Map<int, Color> color = {
    50: Color.fromRGBO(252, 179, 13, .1),
    100: Color.fromRGBO(252, 179, 13, .2),
    200: Color.fromRGBO(252, 179, 13, .3),
    300: Color.fromRGBO(252, 179, 13, .4),
    400: Color.fromRGBO(252, 179, 13, .5),
    500: Color.fromRGBO(252, 179, 13, .6),
    600: Color.fromRGBO(252, 179, 13, .7),
    700: Color.fromRGBO(252, 179, 13, .8),
    800: Color.fromRGBO(252, 179, 13, .9),
    900: Color.fromRGBO(252, 179, 13, 1),
  };

  final MaterialColor colorCustom = MaterialColor(0xffFCB30D, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'w2schools',
      theme: ThemeData(
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: 
      //SignInHomeScreen()
      //HomeScreen()
      HoldInitialPage(),
      //HoldInitialPage()

    );
  }
}









class HoldInitialPage extends StatefulWidget {
  @override
  _HoldInitialPageState createState() => _HoldInitialPageState();
}

class _HoldInitialPageState extends State<HoldInitialPage> {

  getHasPassed()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
   bool value = false;
   value = (prefs.getBool('finishedWalkthrough') ?? false);

    if(value== false){
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>MainIntroScreen()));
    }else {
      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>
                           
                     // TODO replace this class with home screen
                     Scaffold(
                      body: Container(
                        child: Center(child: Text("Login / Homepage"),),
                      ),
                      )
                     //
                      ));

    }
  }

@override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 

      // TODO UnComment This to enable skip walkthrough
      getHasPassed();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         decoration: BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.fill,
             image: AssetImage("asset/w2splash.png")),
         ), 
      ),
    );
  }
}
