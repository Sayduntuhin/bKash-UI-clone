import 'package:bkash_app_c/Sub_widgets/MenuforOffer.dart';
import 'package:bkash_app_c/Pages/offers_details_page.dart';
import 'package:flutter/material.dart';

import '../Sub_widgets/Menuforoffer2.dart';


class OfferWidget extends StatefulWidget{
  const OfferWidget({super.key});

  @override
  State<OfferWidget> createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  @override
  Widget build(BuildContext context)
  {
    return Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
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
                  borderRadius:  const BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Offers',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {

                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> OfferdetailsPage()));

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
              height: 171,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 0.5,
                  ),
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5))
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                   Padding(
                     padding: const EdgeInsets.only(right: 5,bottom: 10,top: 10,left: 10),
                     child: Container(
                       decoration:  BoxDecoration(
                         color: Colors.white,
                         borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                         boxShadow: const [ BoxShadow(
                           color: Colors.black12, blurRadius: 2, offset: Offset.zero,)],
                         border: Border.all(
                             color: Colors.black12,
                             style: BorderStyle.solid


                         ),

                       ),
                       child: MenuforOffer(
                           image: 'assets/images/offerbanner1.jpg',
                           titlelarge: 'Electricity Bill Pay',
                           titlesmall: 'BDT 200 Gift'),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 5,bottom: 10,top: 10,left: 5),
                     child: Container(
                       decoration:  BoxDecoration(
                         color: Colors.white,
                         borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                         boxShadow: const [ BoxShadow(
                           color: Colors.black12, blurRadius: 2, offset: Offset.zero,)],
                         border: Border.all(
                             color: Colors.black12,
                             style: BorderStyle.solid


                         ),

                       ),
                       child: MenuforOffer(
                           image: 'assets/images/offerbanner2.jpg',
                           titlelarge: 'BDT 400 Cashback',
                           titlesmall: 'Daraz'),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 5,bottom: 10,top: 10,left: 5),
                     child: Container(
                       decoration:  BoxDecoration(
                         color: Colors.white,
                         borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                         boxShadow: const [ BoxShadow(
                           color: Colors.black12, blurRadius: 2, offset: Offset.zero,)],
                         border: Border.all(
                             color: Colors.black12,
                             style: BorderStyle.solid


                         ),

                       ),
                       child: MenuforOffer(
                           image: 'assets/images/offerbanner3.jpg',
                           titlelarge: 'BDT 800 Discount',
                           titlesmall: 'Akash DHT'),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 5,bottom: 10,top: 10,left: 5),
                     child: Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                         boxShadow: const [ BoxShadow(
                           color: Colors.black12, blurRadius: 2, offset: Offset.zero,)],
                         border: Border.all(
                           color: Colors.black12,
                           style: BorderStyle.solid


                         ),

                       ),
                       child: MenuforOffer(
                           image: 'assets/images/offerbanner4.jpg',
                           titlelarge: 'Robi',
                           titlesmall: 'Nonstop Cashback'),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right: 10,bottom: 10,top: 10,left: 5),
                     child: Container(
                       decoration:
                       BoxDecoration(
                         color: Colors.white,
                         borderRadius: const BorderRadius.all(Radius.circular(5)),
                         boxShadow: const [ BoxShadow(
                           color: Colors.black12, blurRadius: 2, offset: Offset.zero,)],
                         border: Border.all(
                           color: Colors.black12,

                         ),),
                       child: GestureDetector(
                         onTap: (){
                           setState(() {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> OfferdetailsPage()));
                           });

                         },
                         child: MenuforOffer2(
                             image: 'assets/images/offerbanner5.jpg',
                             titlelarge: 'See All Offers',
                             ),
                       ),
                     ),
                   ),

                  ],

                ),
              ),
            ),

          ],
        ),
      );

  }
}