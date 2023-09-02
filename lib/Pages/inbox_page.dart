import 'package:bkash_app_c/Sub_pages/Notifications_page.dart';
import 'package:bkash_app_c/Sub_pages/Transectioms_page.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: (Radius.circular(5)),
                      topLeft: (Radius.circular(5))),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset.zero,
                    )
                  ],
                ),
                child: const TabBar(
                  indicatorColor: Colors.pink,
                  tabs: [
                    Tab(
                      child: Center(
                          child: Text(
                        'Notifications',
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      )),
                    ),
                    Tab(
                      child: Center(
                          child: Text(
                        'Transections',
                        style: TextStyle(fontSize: 14, color: Colors.black45),
                      )),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              Notificationstab(),
              const Transectionstab(),
            ]))
          ],
        ),
      ),
    );
  }
}
