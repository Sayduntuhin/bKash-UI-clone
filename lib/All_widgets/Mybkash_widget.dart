import 'package:bkash_app_c/Sub_widgets/Menu.dart';
import 'package:flutter/material.dart';

class Mybkash extends StatefulWidget {
  const Mybkash({super.key});

  @override
  State<Mybkash> createState() => _MybkashState();
}

class _MybkashState extends State<Mybkash> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screehight = mediaQuery.size.height;
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
                    topLeft: Radius.circular(5))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'My bKash',
                    style: TextStyle(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      color: Colors.black45,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15) ),

                          ),
                          builder: (context) {
                            return SizedBox(
                              height: screehight * .6,
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsets.only(left: 15),
                                          child: Text(
                                            'My bKash',
                                            style: TextStyle(
                                              fontSize: 11.5,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black45,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);

                                            },
                                            child: const Text(
                                              'Close',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  fontWeight:
                                                      FontWeight.w700,
                                                  color: Colors.pink,
                                                  fontFamily: 'fonts1'),
                                            ))
                                      ],
                                    ),
                                  ),

                                  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Menu(image: 'assets/images/myoffer.jpg', title: 'My Offers'),
                                            Menu(image: 'assets/images/savedbills.jpg', title: 'Save Bills'),
                                            Menu(image: 'assets/images/priyonum.jpg', title: 'Priyo Numbers'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 30,),
                                      Padding(
                                        padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Menu(image: 'assets/images/send_money.jpg', title: 'Fahim'),
                                            Menu(
                                                image: 'assets/images/BPDP.jpg',
                                                title: 'BPDB(Prepaid)'),
                                            Menu(
                                                image: 'assets/images/mobile_recharge.jpg',
                                                title: 'Mom'),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20,),

                                      Padding(
                                        padding: EdgeInsets.only(top: 30,left: 30,right: 30,),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 2,),
                                            Menu(
                                                image: 'assets/images/send_money.jpg', title: 'Adrita'),
                                            SizedBox(
                                              width: 67,
                                            ),
                                            Menu(
                                                image: 'assets/images/mobile_recharge.jpg', title: 'F Tawsif'),

                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Colors.pink,
                          fontFamily: 'fonts1'),
                    ))
              ],
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                  width: 0.5,
                ),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5))),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 10,
                  ),

                  Menu(
                      image: 'assets/images/myoffer.jpg', title: 'My Offers'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(
                      image: 'assets/images/savedbills.jpg',
                      title: 'Save Bills'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(
                      image: 'assets/images/priyonum.jpg',
                      title: 'Priyo Numbers'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(image: 'assets/images/send_money.jpg', title: 'Fahim'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(
                      image: 'assets/images/BPDP.jpg',
                      title: 'BPDB(Prepaid)'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(
                      image: 'assets/images/mobile_recharge.jpg',
                      title: 'Mom'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(
                      image: 'assets/images/send_money.jpg', title: 'Adrita'),
                  SizedBox(
                    width: 10,
                  ),
                  Menu(
                      image: 'assets/images/send_money.jpg', title: 'Tanvir'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
