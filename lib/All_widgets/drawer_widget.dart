import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget{
  const
  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 34),
      child: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 15),
                child: Row(
                  children: [
                    Text('bkash',style: TextStyle(color: Colors.pink.shade400,fontWeight: FontWeight.bold,fontSize: 25)),
                    Text(' Menu',style: TextStyle(color: Colors.pink.shade400,fontWeight: FontWeight.w400,fontSize: 25)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 15),
                child: Container(
                  width: 80,
                  height: 28,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink),
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {

                      },
                      child: Center(
                        child: Text(
                          'বাংলা',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.pink.shade400,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),

                ),
              ),
              const SizedBox(
                height: 28,
              ),

              const Padding(
                 padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                 child: Row(
                   children: [
                     SizedBox(width:5 ,),
                     Image(image: AssetImage('assets/images/home.png'),color: Colors.pink,width: 28,height: 28,),
                     SizedBox(width: 25,),
                     Text('Home',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                   ],
                 ),
               ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 4,left: 10,bottom: 4),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/statements.jpg'),width: 40,height: 40,),
                    SizedBox(width: 15,),

                    Text('Statements',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/warning.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('Limits',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/price-tag.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('Coupons',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 5,left: 10,bottom: 5),
                child: Row(
                  children: [

                    Image(image: AssetImage('assets/images/info.jpg'),width: 35,height: 35,),
                    SizedBox(width: 20,),

                    Text('Information Update',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/nominee.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('Nominee Update',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/refer1.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('Refer bKash App',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/location.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('bKash Map',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/discover.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),
                    Text('Discover bKash',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/settings .png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('Settings',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 5, left: 10, bottom: 5),
                child: Row(
                  children: [
                    Image(image: AssetImage('assets/images/auto_pay.jpg'),width: 37,height: 37,),
                    SizedBox(width: 20,),
                    Text('Auto Pay',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              const Padding(
                padding: EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    SizedBox(width:5 ,),
                    Image(image: AssetImage('assets/images/support.png'),color: Colors.pink,width: 28,height: 28,),
                    SizedBox(width: 25,),

                    Text('Support',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black45),),

                  ],
                ),
              ),
              const Divider(color: Colors.black12,thickness: .5,),
              Padding(
                padding: const EdgeInsets.only(top: 7,left: 10,bottom: 7),
                child: Row(
                  children: [
                    const SizedBox(width:5 ,),
                    const Image(image: AssetImage('assets/images/exit.png'),color: Colors.pink,width: 28,height: 28,),
                    const SizedBox(width: 25,),

                    Text('Log out',style: TextStyle(fontSize:15, fontWeight: FontWeight.bold,color: Colors.pink.shade400),),

                  ],
                ),
              ),





            ],
          ),
        )
      ),
    );

  }

}