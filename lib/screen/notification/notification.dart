// ignore_for_file: camel_case_types, prefer_const_constructors, non_constant_identifier_names, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:anchor_importer/design/Appcolor.dart';
import 'package:anchor_importer/design/media_query.dart';
import 'package:anchor_importer/screen/ShipInfo/ShipInfromation.dart';
import 'package:anchor_importer/screen/notification/controller/inbox_notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class NotificationUI extends StatelessWidget {
  NotificationUI({Key? key}) : super(key: key);
  static const name = 'not9fication';
  // for controlling
  Inbox_notificaton_controller inbox_notificaton_controller =
      Get.put(Inbox_notificaton_controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 1,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              title: Text(
                'Notification',
                style: TextStyle(color: Colors.black),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.notification_add,
                    color: Appcolor.lightBlue,
                  ),
                )
              ],
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuerypage.safeBlockVertical!),
              child: Column(
                children: [
                  Image(
                    height: MediaQuerypage.screenHeight! * 0.25,
                    fit: BoxFit.fill,
                    image: AssetImage('assets/Bangladesh-Map.png'),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                        itemCount: 12,
                        separatorBuilder: (BuildContext context, int index) =>
                            Divider(),
                        itemBuilder: (context, index) {
                          return Obx(() => ListTile(
                                selected: inbox_notificaton_controller
                                    .list_selected.value,
                                onLongPress:
                                    inbox_notificaton_controller.onLongPress(),
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ShipInfomation.name);
                                },
                                leading: CircleAvatar(
                                  radius: MediaQuerypage.pixel! * 9,
                                  backgroundImage:
                                      AssetImage('assets/dp_client.png'),
                                ),
                                title: Text(
                                  'Jennifer Smith',
                                  style: TextStyle(
                                      color: inbox_notificaton_controller
                                          .Itemcolor()),
                                ),
                                subtitle: Text(
                                  'It is a long established fact that a reader...',
                                  style: TextStyle(
                                      color: inbox_notificaton_controller
                                          .Itemcolor()),
                                ),
                                trailing: Text('DK-CH'),
                                // Checkbox(
                                //   activeColor: Colors.white,
                                //   checkColor: Appcolor.lightBlue,
                                //   value: index % 2 == 0 ? false : true,
                                //   onChanged: (value) {},
                                // ),
                              ));
                        }),
                  )),
                ],
              ),
            )));
  }
}
