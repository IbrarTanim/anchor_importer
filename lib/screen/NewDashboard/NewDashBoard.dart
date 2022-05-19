// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:anchor_importer/design/Appcolor.dart';
import 'package:anchor_importer/design/TextStyle.dart';
import 'package:anchor_importer/design/media_query.dart';
import 'package:anchor_importer/screen/NewDashboard/component/drower_view.dart';
import 'package:anchor_importer/screen/ancor%20app/ancorapp.dart';
import 'package:anchor_importer/screen/userInfromation/UserInformation.dart';
import 'package:flutter/material.dart';

class NewDashboard extends StatelessWidget {
  NewDashboard({Key? key}) : super(key: key);
  static const name = 'NewDashboard';
  //**
  //*variable
  //
  // */
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldkey,
      drawer: d_drower(context),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              scaffoldkey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
        title: Text(
          'Home',
          style: Textstyle.black,
        ),
        backgroundColor: Appcolor.lightBlue,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical! * 2,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  width: MediaQuerypage.screenWidth! * 0.5,
                  image: AssetImage('assets/ankornid.png'),
                ),
              ),
              SizedBox(height: MediaQuerypage.screenHeight! * 0.2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AncorApp.name);
                    },
                    child: Container(
                      width: MediaQuerypage.screenWidth! * 0.45,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      decoration: BoxDecoration(
                        color: Appcolor.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                          child: Text(
                        'Ship Order',
                        style: Textstyle.botton,
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, UserInformation.name);
                    },
                    child: Container(
                      width: MediaQuerypage.screenWidth! * 0.45,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      decoration: BoxDecoration(
                        color: Appcolor.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                          child: Text(
                        'Profile',
                        style: Textstyle.botton,
                      )),
                    ),
                  ),
                ],
              ),
            ],
          )),
    ));
  }
}
