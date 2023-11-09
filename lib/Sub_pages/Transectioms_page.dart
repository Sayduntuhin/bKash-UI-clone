import 'package:flutter/material.dart';

import '../All_widgets/transections_list_details.dart';
import '../demo_data.dart';
import '../List_items/Transections_list.dart';

class Transectionstab extends StatelessWidget{
  const Transectionstab({super.key});


  @override
  Widget build(BuildContext context)
  {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screehight = mediaQuery.size.height;
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
          itemCount: demodatas.length,
            itemBuilder: (context,index){
            final datas = demodatas[index];
            return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape:
                    const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                    builder: (context) {
                      return SizedBox(
                          height: 340,
                          child: TransectionsListDetails(data: datas,)
                      );
                    });
              },
              child: TransectionsMenu(image: datas['imageurl'] as String,
                title: datas['title'] as String,
                account: datas['account'] as String,
                trans_id: datas['Trans_id'] as String,
                amount: datas['amount'] as double,
                icontext: datas['icon'] as String,
                textcolour: index.isEven ? Colors.red : Colors.green,
              ),
              );

            },

          ),
        ),
      ),
    );

  }
}