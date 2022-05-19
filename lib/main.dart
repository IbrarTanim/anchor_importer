// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:anchor_importer/design/Appcolor.dart';
import 'package:anchor_importer/screen/NewDashboard/NewDashBoard.dart';
import 'package:anchor_importer/screen/NidCard/NidCard.dart';
import 'package:anchor_importer/screen/Otp/Otpui.dart';
import 'package:anchor_importer/screen/ShipInfo/ShipInfromation.dart';
import 'package:anchor_importer/screen/cheakbook/Cheakbook.dart';
import 'package:anchor_importer/screen/home/home.dart';
import 'package:anchor_importer/screen/license/License.dart';
import 'package:anchor_importer/screen/login/login.dart';
import 'package:anchor_importer/screen/payment%20status/paymentstatus.dart';
import 'package:anchor_importer/screen/setting/settingui.dart';
import 'package:anchor_importer/screen/userInfromation/UserInformation.dart';
import 'package:anchor_importer/screen/waiting/waiting.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screen/ancor app/ancorapp.dart';
import 'screen/notification/notification.dart';
import 'screen/registation/registation.dart';
import 'screen/ship catagorie/shipcategori.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Appcolor.lightBlue,
      statusBarIconBrightness: Brightness.dark // status bar color
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      routes: {
        Login.name: (context) => Login(),
        Ragistation.name: (context) => Ragistation(),
        NidCard.name: (context) => NidCard(),
        License.name: (context) => License(),
        CheakBook.name: (context) => CheakBook(),
        Otpui.name: (context) => Otpui(),
        SettingUi.name: (context) => SettingUi(),
        UserInformation.name: (context) => UserInformation(),
        UserInformation.name: (context) => UserInformation(),
        AncorApp.name: (context) => AncorApp(),
        NotificationUI.name: (context) => NotificationUI(),
        ShipInfomation.name: (cotext) => ShipInfomation(),
        PaymentStatus.name: (context) => PaymentStatus(),
        NewDashboard.name: (context) => NewDashboard(),
        WaitingUi.name: (context) => WaitingUi(),
        ShipCategori.name:(context)=>ShipCategori()
      },
    );
  }
}
