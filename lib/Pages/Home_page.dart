
import 'package:bkash_app_c/All_widgets/Moreservice_widget.dart';
import 'package:bkash_app_c/All_widgets/Mybkash_widget.dart';
import 'package:bkash_app_c/All_widgets/carousel_slider_widget.dart';
import 'package:bkash_app_c/All_widgets/drawer_widget.dart';
import 'package:bkash_app_c/All_widgets/expended_manu_widget.dart';
import 'package:bkash_app_c/All_widgets/offer_widget.dart';
import 'package:bkash_app_c/All_widgets/suggestiom.widget.dart';
import 'package:flutter/material.dart';


import '../Button_widget/balance_button.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});



  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(0.0, 0.20))
                          ]),
                      child: const ExpendedMenu()),
                  const SizedBox(
                    height: 15,
                  ),
                  const Mybkash(),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Carousel(),
                  ),
                  const SuggestionsWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const OfferWidget(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Moreservice(),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    height: 160,
                    child: IconButton(
                      onPressed: () async {

                      },
                      icon: Image.asset(
                        'assets/images/banner.jpg',
                        width: double.infinity,
                        height: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      width: double.infinity,
                      height: 320,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black12,
                            width: 0.5,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Image(
                            image: AssetImage(
                              'assets/images/Banner2.jpg',
                            ),
                            width: 150,
                            height: 150,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'Win a World Cup Match Ticket',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: '',
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'By reachering and sending a wish',
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 11,
                                fontFamily: '',
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {

                                  });
                                },
                                child: Text(
                                  'Learn More',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.pink.shade400,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),

                          ),

                        ],

                      ),
                    ),
                  ),
                  const SizedBox(height: 100,)
                ],
              ),
            ],
          ),
        ));
  }
}
