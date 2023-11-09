import 'package:flutter/material.dart';

import '../demo_data.dart';
import '../List_items/notifications_list.dart';

class Notificationstab extends StatelessWidget{
  const Notificationstab({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
    body: SafeArea(
      child: ListView.builder(
          itemCount: notifictions.length,
          itemBuilder: (context,index){
            final notification = notifictions[index];
            return NotificationsList(
                title: notification['title'] as String,
                image: notification['imageurl'] as String,
                sub_title: notification[ 'sub_title'] as String
            );

          }),


    ),
    );

  }
}