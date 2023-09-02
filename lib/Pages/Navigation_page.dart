import 'package:bkash_app_c/All_widgets/drawer_widget.dart';
import 'package:bkash_app_c/Pages/Home_page.dart';
import 'package:bkash_app_c/Pages/inbox_page.dart';
import 'package:bkash_app_c/Pages/scan_page.dart';
import 'package:flutter/material.dart';
import '../Button_widget/balance_button.dart';
class NavigationPage extends StatefulWidget{
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int index = 0;
  List showscreens = [
    const Homepage(),
    const ScanPage(),
    const InboxPage(),

  ];
  final scaffoldkey = GlobalKey<ScaffoldState>();
  void onSelecteditem (int index){
    setState(() {
      this.index = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      extendBody: true,
        key: scaffoldkey,
        endDrawer: const MyDrawer(),
        appBar:  index == 0 ? AppBar(
          backgroundColor: const Color(0xFFe3146c),
          toolbarHeight: 80,
          title:   const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/tuhin1.jpg'),
                radius: 20,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Md Saydun Nabi Tuhin',

                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontFamily: 'fonts1',
                              fontSize: 12,
                              letterSpacing: 1
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Balancebutton(),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20,left: 20),
              child: IconButton(
                onPressed: () {

                },
                icon: Image.asset('assets/images/reward2.png',width: 27,height: 27,) ,),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20,),
              child: IconButton(
                onPressed: () {

                  scaffoldkey.currentState?.openEndDrawer();


                },
                icon: Image.asset('assets/images/logo.png'),
              ),
            ),
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ) : AppBar(
          backgroundColor: const Color(0xFFe3146c),

          title: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Inbox',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(
                width: 140,
              ),

            ],
          ),
          actions: [
            IconButton(
              onPressed: () {

                scaffoldkey.currentState?.openEndDrawer();

              },
              icon: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
        body: showscreens.elementAt(index),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(

            onPressed: () {

              return onSelecteditem(index);

            },
          disabledElevation: null,
            backgroundColor: Colors.white,
            child: Image.asset('assets/images/qrcode.jpg',width: 45,height: 45)
        ),
        bottomNavigationBar: Container(
          decoration: const ShapeDecoration(

              shape: ContinuousRectangleBorder(),
            shadows: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 8, offset: Offset(0,1),)
            ],

          ),

          child: SizedBox(
            height: 70,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
              child: BottomAppBar(


                shape: const CircularNotchedRectangle(),
                notchMargin: 8.0,
                clipBehavior: Clip.antiAlias,
                child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  iconSize: 30,
                  items: const [
                     BottomNavigationBarItem(

                      icon:/* Image.asset('assets/images/homepage.png',width: 30,height: 30, ),*/
                      Icon(Icons.home_filled),


                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.abc),
                        label:'Scan QR' ),
                    BottomNavigationBarItem(

                        icon: Icon(Icons.email_rounded),

                    /*Image.asset('assets/images/message.jpg',width: 30,height: 30,),*/

                    label: 'Inbox'),



                  ],
                  currentIndex: index,
                  selectedItemColor: const Color(0xFFe3146c),

                  onTap: onSelecteditem,

                ),


              ),
            ),
          ),
        )

    );
  }
}

