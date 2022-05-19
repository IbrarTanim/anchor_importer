// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:anchor_importer/design/Appcolor.dart';
import 'package:anchor_importer/design/media_query.dart';
import 'package:anchor_importer/screen/notification/notification.dart';
import 'package:anchor_importer/screen/payment%20status/paymentstatus.dart';
import 'package:anchor_importer/screen/ship%20catagorie/shipcategori.dart';
import 'package:flutter/material.dart';

d_drower(BuildContext context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Boris Christy"),
            accountEmail: Text("abhishekm977@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/dp_client.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuerypage.safeBlockVertical!,
                horizontal: MediaQuerypage.safeBlockHorizontal! * 1.5),
            child: Row(mainAxisSize: MainAxisSize.max, children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Appcolor.lightBlue,
                    ),
                    Text('\t 100%\n \t Profile Complite'),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Appcolor.lightBlue,
                  ),
                  Text('\t Trip Percentage'),
                ],
              ),
            ]),
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.flag),
            title: Text('Trip History'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
              Navigator.pushNamed(context, NotificationUI.name);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Payment'),
            onTap: () {
              Navigator.pushNamed(context, PaymentStatus.name);
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text('Ship'),
            onTap: () {
              Navigator.pushNamed(context, ShipCategori.name);
              // Update the state of the app.
              // ...
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settring'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text('Help'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
