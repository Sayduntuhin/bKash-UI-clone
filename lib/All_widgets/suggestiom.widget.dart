import 'package:bkash_app_c/Sub_widgets/Menu.dart';
import 'package:flutter/material.dart';

class SuggestionsWidget extends StatefulWidget{
  const SuggestionsWidget({super.key});

  @override
  State<SuggestionsWidget> createState() => _SuggestionsWidgetState();
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double screehight = mediaQuery.size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
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
                    'Suggestions',
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
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  topLeft: Radius.circular(5))
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
                                            'Suggestions',
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

                                  const Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Menu(image: 'assets/images/quizeGiri.jpg', title: 'QuizGiri'),
                                                Menu(image: 'assets/images/Daraz2.jpg', title: 'Daraz'),
                                                Menu(image: 'assets/images/Bdrail.jpg', title: 'Bangladesh Railway'),
                                              ],
                                            ),

                                          ), SizedBox(height: 30,),
                                          Padding(
                                            padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Menu(image: 'assets/images/shadhin_music.jpg', title: 'Shadin Music'),
                                                Menu(image: 'assets/images/Surukka.jpg', title: 'Surokkha)'),
                                                Menu(image: 'assets/images/bdnews24.jpg', title: 'bdnews24.com'),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Padding(
                                            padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Menu(image: 'assets/images/shongjog.jpg', title: 'Shongjog'),
                                                Menu(image: 'assets/images/caretutors.jpg', title: 'Caretutors'),
                                                Menu(image: 'assets/images/10minscl.jpg', title: '10 Minits School'),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Padding(
                                            padding: EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 2,),
                                                Menu(image: 'assets/images/bdjobs.jpg', title: 'Bdjobs'),
                                                SizedBox(
                                                  width: 67,
                                                ),
                                                Menu(image: 'assets/images/bikroy.jpg', title: 'Bikroy'),

                                              ],
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: const Text(
                      'See All',
                      textAlign: TextAlign.end,
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
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5))
            ),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 10,),
                  Menu(image: 'assets/images/quizeGiri.jpg', title: 'QuizGiri'),
                  Menu(image: 'assets/images/Daraz2.jpg', title: 'Daraz'),
                  Menu(image: 'assets/images/Bdrail.jpg', title: 'Bangladesh Railway'),
                  SizedBox(width: 8,),
                  Menu(image: 'assets/images/shadhin_music.jpg', title: 'Shadin Music'),
                  SizedBox(width: 8,),
                  Menu(image: 'assets/images/Surukka.jpg', title: 'Surokkha)'),
                  SizedBox(width: 8,),
                  Menu(image: 'assets/images/bdnews24.jpg', title: 'bdnews24.com'),
                  SizedBox(width: 8,),
                  Menu(image: 'assets/images/shongjog.jpg', title: 'Shongjog'),
                  SizedBox(width: 10,),
                  Menu(image: 'assets/images/caretutors.jpg', title: 'Caretutors'),
                  SizedBox(width: 10,),
                  Menu(image: 'assets/images/10minscl.jpg', title: '10 Minits School'),
                  SizedBox(width: 10,),
                  Menu(image: 'assets/images/bdjobs.jpg', title: 'Bdjobs'),
                  SizedBox(width: 10,),
                  Menu(image: 'assets/images/bikroy.jpg', title: 'Bikroy'),
                  SizedBox(width: 10,),

                ],

              ),
            ),
          ),

        ],
      ),
    );

  }
}