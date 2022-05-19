// ignore_for_file: prefer_const_constructors

import 'package:anchor_importer/design/media_query.dart';
import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum Radiobutton { MC, Bug, CFC, Bulk }
Radiobutton selcted = Radiobutton.MC;
quentity(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) => Dialog(
            child: Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuerypage.safeBlockVertical! * 2,
                    horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Product name',
                      hintText: 'Name',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.01,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Limit',
                      hintText: 'ton',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuerypage.screenHeight! * 0.01,
                  ),
                  ListTile(
                    title: Text('MC'),
                    leading: Radio<Radiobutton>(
                      value: Radiobutton.MC,
                      groupValue: selcted,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text('Bug'),
                    leading: Radio<Radiobutton>(
                      value: Radiobutton.Bug,
                      groupValue: selcted,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text('CFC'),
                    leading: Radio<Radiobutton>(
                      value: Radiobutton.Bug,
                      groupValue: selcted,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    title: Text('Bulk'),
                    leading: Radio<Radiobutton>(
                      value: Radiobutton.CFC,
                      groupValue: selcted,
                      onChanged: (value) {},
                    ),
                  ),
                ]),
              ),
            ),
          ));
}
