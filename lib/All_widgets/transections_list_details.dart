import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransectionsListDetails extends StatelessWidget{


  final Map<String, Object> data;

   TransectionsListDetails({super.key,
     required this.data});
  final String time = DateFormat.jm().format(DateTime.now());
  final String date = DateFormat.yMd().format(DateTime.now());




  @override
  Widget build(BuildContext context) {
  return  Column(

    children: [
      SizedBox(
        height: 50,
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

          children: [
             Padding(
              padding:
              const EdgeInsets.only(left: 15),
              child: Text(

             data['title'] as String,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);

                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight:
                      FontWeight.w700,
                      color: Colors.pink,
             ),
                ))
          ],
        ),

      ),
      const Divider(color: Colors.black26,thickness: .5,height: 0,),
      SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 15,bottom: 10,right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,

                children: [
                  const SizedBox(
                      width: 50,
                      height: 15,

                      child: Text('Account',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight:FontWeight.w500),)),
                  SizedBox(
                      width: 136,
                      height: 20,
                      child: Text( data['account'] as String,style: const TextStyle(color: Colors.black87,fontSize: 13,fontWeight:FontWeight.w500),)),

                ],

              ),
            ),

            const VerticalDivider(thickness: .5,width: 0,color: Colors.black26,),
            Padding(
              padding: const EdgeInsets.only(right: 51, top: 15,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(
                      width: 50,
                      height: 15,
                      child: Text('Time',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight:FontWeight.w500),),),

                  SizedBox(
                      width: 134,
                      height: 20,
                      child: Text('$time $date',style: const TextStyle(color: Colors.black87,fontSize: 13,fontWeight:FontWeight.w500),),),


                ],

              ),
            ),


          ],

        ),
      ),
      const Divider(thickness: .5,height: 0,color: Colors.black26,),
      SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 15,bottom: 10,right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  const SizedBox(
                      width: 50,
                      height: 15,
                child : Text('Amount',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight:FontWeight.w500),),
                  ),
                  SizedBox(
                      width: 134,
                      height: 20,
                      child:Text('\৳${data['amount']}\0',style: const TextStyle(color: Colors.black87,fontSize: 13,fontWeight:FontWeight.w500),),

                  ),

                ],

              ),
            ),
            const VerticalDivider(thickness: .5,width: 0,color: Colors.black26,),
             const Padding(
              padding: EdgeInsets.only(right: 49, top: 15,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(
                      width: 50,
                      height: 15,
                      child: Text('Charge',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight:FontWeight.w500),)),

                  SizedBox(
                      width: 134,
                      height: 20,
                      child: Text('৳0.00',style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight:FontWeight.w500),)),


                ],

              ),
            ),


          ],

        ),
      ),
      const Divider(thickness: .5,height: 0,color: Colors.black26,),
      SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 15,bottom: 10,right: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  const SizedBox(
                    width: 80,
                    height: 15,
                    child : Text('Transaction ID',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight:FontWeight.w500),),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 134,
                        height: 20,
                        child:  Row(
                          children: [
                            Text(data['Trans_id'] as String,style: const TextStyle(color: Colors.black87,fontSize: 16,fontWeight:FontWeight.w500),),
                            const Padding(
                              padding: EdgeInsets.all(2),
                              child: Icon(Icons.copy_outlined,size: 14,color: Colors.black54,),
                            )
                          ],
                        ),

                      ),
                    ],
                  ),

                ],

              ),
            ),
            const VerticalDivider(thickness: .5,width: 0,color: Colors.black26,),
            const Row(

              children: [
                Padding(
                  padding: EdgeInsets.only(right: 49, top: 15,bottom: 10,left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(
                          width: 50,
                          height: 15,
                          child: Text('Reference',style: TextStyle(color: Colors.black54,fontSize: 12,fontWeight:FontWeight.w500),),
                      ),

                      SizedBox(
                          width: 134,
                          height: 20,
                          child: Text('',style: TextStyle(color: Colors.black87,fontSize: 13,fontWeight:FontWeight.w500),),
                      ),


                    ],

                  ),
                ),
              ],
            ),


          ],

        ),
      ),
      const Divider(thickness: .5,height: 0,color: Colors.black26,),
      const SizedBox(height: 70,),
      Container(
        width: 250,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.pink),
            borderRadius: BorderRadius.circular(50)
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {

            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.screen_share,color: Colors.pink.shade400,),
                const SizedBox(width: 2,),

                Text(
                  'Share',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.pink.shade400,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),

      ),

    ],
  );
  }
}