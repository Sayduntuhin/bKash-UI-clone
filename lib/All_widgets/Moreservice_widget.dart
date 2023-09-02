import 'package:bkash_app_c/Sub_widgets/Menu.dart';
import 'package:flutter/material.dart';

class Moreservice extends StatelessWidget {
  const Moreservice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                  width: 0.5,
                ),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    topLeft: Radius.circular(5))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'More Services',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 170,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                  width: 0.5,
                ),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: const Column(
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Menu(
                        image: 'assets/images/tickets.jpg', title: 'Titkets'),
                    Menu(
                        image: 'assets/images/MS2.jpg', title: 'GP Flexiplan'),
                    Menu(
                        image: 'assets/images/MS3.jpg', title: 'Donetion'),
                    Menu(
                        image: 'assets/images/MS4.jpg', title: 'Insurence'),

                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Menu(
                        image: 'assets/images/MS5.jpg', title: 'Games'),
                    SizedBox(width: 20,),
                    Menu(
                        image: 'assets/images/MS6.jpg', title: 'Travel'),
                    SizedBox(width: 20,),
                    Menu(
                        image: 'assets/images/MS7.jpg', title: 'Shopping'),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
