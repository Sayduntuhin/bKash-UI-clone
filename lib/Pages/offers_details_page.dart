import 'package:flutter/material.dart';
import '../Sub_widgets/manu_for_offer_details.dart';

class OfferdetailsPage extends StatefulWidget {
  const OfferdetailsPage({super.key});

  @override
  State<OfferdetailsPage> createState() => _OfferdetailsPageState();
}

class _OfferdetailsPageState extends State<OfferdetailsPage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenwight = mediaQuery.size.width;
    double screehight = mediaQuery.size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFe3146c),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              'Offers',
              style: TextStyle(fontSize: 13),
            ),
            const SizedBox(
              width: 130,
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10,bottom: 10),
              child: TextField(
                controller: TextEditingController(),
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    hintText: 'Enter offer,product or merchant name',
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        fontFamily: 'fonts1'),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(color: Colors.black12))),
              ),
            ),
            Expanded(child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  width: screenwight * .9 ,
                  child: Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 135,
                        child: Image(
                          image: AssetImage('assets/images/offerdetailsbanner.jpg'),
                          height: 160,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white12,
                              width: 0.5,

                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset.zero,
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'All Offers',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () {
                                      setState(() {});
                                    },
                                    child: const Text(
                                      'Filter',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.pink,
                                          fontFamily: 'fonts1'),
                                    )),
                                Icon(
                                  Icons.filter_alt,
                                  color: Colors.pink.shade400,
                                  size: 15,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration:BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white12,
                              width: 0.5,

                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                offset: Offset.zero,
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5))),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner1.jpg',
                                      titlelarge: 'Electricity Bill Pay',
                                      titlesmall: 'BDT 200 Gift'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner2.jpg',
                                      titlelarge: 'BDT 400 Cashback',
                                      titlesmall: 'Daraz'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner3.jpg',
                                      titlelarge: 'BDT 800 Discount',
                                      titlesmall: 'Akash DTH'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner4.jpg',
                                      titlelarge: 'Robi',
                                      titlesmall: 'Nonstop Cashback'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner1.jpg',
                                      titlelarge: 'Electricity Bill Pay',
                                      titlesmall: 'BDT 200 Gift'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner2.jpg',
                                      titlelarge: 'BDT 400 Cashback',
                                      titlesmall: 'Daraz'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner3.jpg',
                                      titlelarge: 'BDT 800 Discount',
                                      titlesmall: 'Akash DTH'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner4.jpg',
                                      titlelarge: 'Robi',
                                      titlesmall: 'Nonstop Cashback'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner1.jpg',
                                      titlelarge: 'Electricity Bill Pay',
                                      titlesmall: 'BDT 200 Gift'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner2.jpg',
                                      titlelarge: 'BDT 400 Cashback',
                                      titlesmall: 'Daraz'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner3.jpg',
                                      titlelarge: 'BDT 800 Discount',
                                      titlesmall: 'Akash DTH'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner4.jpg',
                                      titlelarge: 'Robi',
                                      titlesmall: 'Nonstop Cashback'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner1.jpg',
                                      titlelarge: 'Electricity Bill Pay',
                                      titlesmall: 'BDT 200 Gift'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner2.jpg',
                                      titlelarge: 'BDT 400 Cashback',
                                      titlesmall: 'Daraz'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner3.jpg',
                                      titlelarge: 'BDT 800 Discount',
                                      titlesmall: 'Akash DTH'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner4.jpg',
                                      titlelarge: 'Robi',
                                      titlesmall: 'Nonstop Cashback'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner1.jpg',
                                      titlelarge: 'Electricity Bill Pay',
                                      titlesmall: 'BDT 200 Gift'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner2.jpg',
                                      titlelarge: 'BDT 400 Cashback',
                                      titlesmall: 'Daraz'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner3.jpg',
                                      titlelarge: 'BDT 800 Discount',
                                      titlesmall: 'Akash DTH'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner4.jpg',
                                      titlelarge: 'Robi',
                                      titlesmall: 'Nonstop Cashback'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner1.jpg',
                                      titlelarge: 'Electricity Bill Pay',
                                      titlesmall: 'BDT 200 Gift'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner2.jpg',
                                      titlelarge: 'BDT 400 Cashback',
                                      titlesmall: 'Daraz'),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner3.jpg',
                                      titlelarge: 'BDT 800 Discount',
                                      titlesmall: 'Akash DTH'),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 2,
                                        offset: Offset.zero,
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                  ),
                                  child: MenuforOfferDetails(
                                      image: 'assets/images/offerbanner4.jpg',
                                      titlelarge: 'Robi',
                                      titlesmall: 'Nonstop Cashback'),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ))


          ],
        ),
      ),
    );
  }
}