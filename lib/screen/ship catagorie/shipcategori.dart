// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:anchor_importer/design/Appcolor.dart';
import 'package:flutter/material.dart';

class ShipCategori extends StatelessWidget {
  const ShipCategori({Key? key}) : super(key: key);
  static const name = 'ShipCategori';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            backgroundColor: Appcolor.lightBlue,
            elevation: 1,
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'All Ship',
                ),
                Tab(
                  text: 'Other Ship',
                ),
              ],
            ),
            title: Text('Ship Details'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_transit, size: 350),
              Icon(Icons.directions_car, size: 350),
            ],
          ),
        )));
  }
}
