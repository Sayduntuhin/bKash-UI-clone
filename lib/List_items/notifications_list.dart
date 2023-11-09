import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationsList extends StatelessWidget{
  final String image;
  final String title;
  final String sub_title;


  NotificationsList({super.key,

    required this.image,
   required this.title,
   required this.sub_title,


});
  final String time = DateFormat.jm().format(DateTime.now());
  final String date = DateFormat.yMd().format(DateTime.now());


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screenwight = mediaQuery.size.width;
    return  Padding(
      padding: const EdgeInsets.only(left: 15,right: 15),
      child: Container(
        decoration:
        const BoxDecoration(
            color: Colors.white,
           border: Border.symmetric(vertical: BorderSide(
             width: .5,color: Colors.black12
           ))
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  const EdgeInsets.all(5),
              child: Container(
                decoration:
                const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset.zero,
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Image(image : AssetImage(image)),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 8,),
                          child: Center(child: Image(image: const AssetImage('assets/images/logo.png'),width: 50,height: 50,color: Colors.pink.shade400,)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                                  child: SizedBox(
                                      height: 15,
                                      width: screenwight * .4,
                                      child: Text(title,style: const TextStyle(fontSize: 14 ),)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                                  child:   SizedBox(
                                    height: 15,
                                    width: screenwight * .3,
                                    child: Center(
                                      child: Text(
                                        '$time $date',
                                        style: const TextStyle(color: Colors.black26,
                                          fontSize: 12,
                                        ),),
                                    ),
                                  )
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,right: 8,bottom: 10),
                              child: SizedBox(
                                  width: screenwight * .7,
                                  child: Text(sub_title,style: const TextStyle(fontSize: 14),)),
                            )
                          ],
                        )
                      ],
                    )


                  ],
                ),
              ),
            ),


          ],
        ),

      ),
    );


  }
}