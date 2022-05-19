// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:anchor_importer/design/Appcolor.dart';
import 'package:anchor_importer/design/TextStyle.dart';
import 'package:anchor_importer/design/media_query.dart';
import 'package:anchor_importer/screen/ShipInfo/ShipInfromation.dart';
import 'package:anchor_importer/screen/ancor%20app/component/quentity.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'component/fleetlist.dart';

class AncorApp extends StatelessWidget {
  const AncorApp({Key? key}) : super(key: key);
  static const name = 'ancorapp';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 1,
              centerTitle: true,
              backgroundColor: Appcolor.lightBlue,
              title: Text(
                'AncorApp',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical! * 2,
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 3),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      quentity(context);
                    },
                    child: Container(
                      width: MediaQuerypage.screenWidth,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      decoration: BoxDecoration(
                        color: Appcolor.lightBlue,
                        //border: Border.all(color: Color(0xFFB1B1B1)),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                          child: Text(
                        'Quentity',
                        style: Textstyle.botton,
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuerypage.safeBlockVertical! * 2,
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 3),
                    child: InkWell(
                      onTap: () async {
                        fleetlist(context);
                      },
                      child: Container(
                        width: MediaQuerypage.screenWidth,
                        height: MediaQuerypage.screenHeight! * 0.05,
                        decoration: BoxDecoration(
                          color: Appcolor.lightBlue,
                          //border: Border.all(color: Color(0xFFB1B1B1)),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: Center(
                            child: Text(
                          'Fleet List',
                          style: Textstyle.botton,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
                    ),
                    child: DateTimePicker(
                      type: DateTimePickerType.dateTimeSeparate,
                      dateMask: 'd MMM, yyyy',
                      initialValue: DateTime.now().toString(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                      icon: Icon(Icons.event),
                      dateLabelText: 'Date',
                      timeLabelText: "Hour",
                      // selectableDayPredicate: (date) {
                      //   if (date.weekday == 6 || date.weekday == 7) {
                      //     return false;
                      //   }
                      //   return true;
                      // },
                      // onChanged: (val) => print(val),
                      // validator: (val) {
                      //   print(val);
                      //   return null;
                      // },
                      // onSaved: (val) => print(val),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 4,
                        vertical: MediaQuerypage.safeBlockVertical! * 3),
                    child: SizedBox(
                      width: MediaQuerypage.screenWidth,
                      height: MediaQuerypage.screenHeight! * 0.06,
                      child: DropdownButton<String>(
                        elevation: 5,
                        isExpanded: true,
                        hint: Text('Fleet Type'),
                        items: <String>[
                          'A (2000-4000)',
                          'B (1000-2000)',
                          'C (0-999)'
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () async {
                      Navigator.pushNamed(context, ShipInfomation.name);
                    },
                    child: Container(
                      width: MediaQuerypage.screenWidth,
                      height: MediaQuerypage.screenHeight! * 0.05,
                      decoration: BoxDecoration(
                        color: Appcolor.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Center(
                          child: Text(
                        'Submit',
                        style: Textstyle.botton,
                      )),
                    ),
                  ),
                ],
              ),
            )));
  }
}
