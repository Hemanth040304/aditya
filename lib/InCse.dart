import 'package:flutter/material.dart';

import 'Cdept.dart';
import 'Cpre.dart';
import 'Csar.dart';

class InCse extends StatelessWidget {
  const InCse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 5,
        ),
        Image.asset(
          'assets/img/aec.png',
          height: 210,
          width: 210,
        ),
      ],
    ),
    ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
            children: [GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (_) => const Cpre(
                      url: 'https://aec.edu.in/Academic_Regulations/1.%20AR20%20B.Tech%20Academic%20Regulations.pdf',
                    ),
                  ),
                );
              },

              child:Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: 370,
                  height: 200,
                  child:  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [Icon(Icons.people_alt_rounded,color: Colors.cyanAccent,),
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          'pre-Qualifier',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.indigo,
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ),
                        Row(children: [

                        ],),//Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        const Text(
                          '',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        SizedBox(
                          width: 100,
                        ), //SizedBox
                      ],
                    ), //Column
                  ), //Padding
                ), //SizedBox
              ),
            ),
              Column(
                children:[GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Csar(),
                    )
                    );
                  },

                  child:Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      width: 370,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [Icon(Icons.people_alt_rounded,color: Colors.pink,),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'SAR',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ),
                            Row(children: [

                            ],),//Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            const Text(
                              '',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ), //Textstyle
                            ), //Text
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            SizedBox(
                              width: 100,
                            ), //SizedBox
                          ],
                        ), //Column
                      ), //Padding
                    ), //SizedBox
                  ),
                ),
                ],
              ),
              Column(
                  children:[GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<dynamic>(
                          builder: (_) => const Cdept(
                            url: 'https://aec.edu.in/Academic_Regulations/1.%20AR20%20B.Tech%20Academic%20Regulations.pdf',
                          ),
                        ),
                      );
                    },

                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: SizedBox(
                        width: 370,
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [Icon(Icons.people_alt_rounded,color: Colors.orange),
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'Department',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ),
                              Row(children: [

                              ],),//Text
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              const Text(
                                '',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ), //Textstyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              SizedBox(
                                width: 100,
                              ), //SizedBox
                            ],
                          ), //Column
                        ), //Padding
                      ), //SizedBox
                    ),
                  )
                  ]
              ),

            ]
        ),

      ),
    );
  }
}
