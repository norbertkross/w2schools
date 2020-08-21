import 'package:flutter/material.dart';
import 'package:w2schools/Components/reUseButton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AccountCreatedScreen extends StatefulWidget {
  /// A class that displays a welcome screen once a user account has been 
  /// successfully created.
  /// User must create and an account and if successful before can see this screen.
  @override
  _AccountCreatedScreenState createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    //fill in the screen size of the device in the design
    ScreenUtil.init(
        context,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height);

    return Scaffold(
          body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(
            top:MediaQuery.of(context).size.height * 0.15, 
            left:10.0, 
            right: 10.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  "You have successfully",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold
                  ), 
                ),
              ),
              Center(
                child: Text(
                  "Created your account",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(15.0),),
              Container(
                width: 130,
                // height: 200,
                child: Image(image: AssetImage('asset/Group 23.png'),)
                ),
                SizedBox(height: ScreenUtil().setHeight(20.0),),
                Container(
                  width: 150,
                  // height: 200,
                  child:Image(image: AssetImage('asset/INH_47129_18887.png'))
                ),
                SizedBox(height: ScreenUtil().setHeight(25.0),),
                ReUseButtonWithText(label: "My Courses", onTap: (){})  
            ],
          ),
        ),
      ),
    );
  }
}