import 'package:aditya/InCse.dart';
import 'package:aditya/InMech.dart';
import 'package:aditya/InMini.dart';
import 'package:aditya/ineee.dart';
import 'package:flutter/material.dart';

class DeptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    double pd = MediaQuery.of(context).size.height * 0.03;
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ineee(),
                    ));
              },
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                child: SizedBox(
                  width: wi / 1.25,
                  height: hi / 4.5,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.electric_bolt,
                          color: Colors.cyanAccent,
                        ),
                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        Text(
                          'EEE',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.indigo,
                            fontWeight: FontWeight.w500,
                          ), //Textstyle
                        ),
                        Row(
                          children: [],
                        ), //Text
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

            //Card

            Column(
                //top: 0,
                //left: (MediaQuery.of(context).size.width - 370) / 2,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InMech(),
                          ));
                    },
                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      child: SizedBox(
                        width: wi / 1.25,
                        height: hi / 4.5,
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.engineering,
                                color: Colors.orange,
                              ),
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                                'MECH',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ),
                              Row(
                                children: [
                                  // Image(image: AssetImage('assets/img/cube.png'))
                                ],
                              ), //Text
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
                ]

                //Card
                ),
            Column(
              //top: 0,
              //left: (MediaQuery.of(context).size.width - 370) / 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InCse(),
                        ));
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4.5,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.computer_sharp,
                              color: Colors.pink,
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'CSE',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ),
                            Row(
                              children: [
                                // Image(image: AssetImage('assets/img/cube.png'))
                              ],
                            ), //Text
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
              //Card
            ),
            Column(
              //top: 0,
              //left: (MediaQuery.of(context).size.width - 370) / 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InCse(),
                        ));
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4.5,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.electrical_services,
                              color: Colors.purpleAccent,
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'ECE',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ),
                            Row(
                              children: [
                                // Image(image: AssetImage('assets/img/cube.png'))
                              ],
                            ), //Text
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

              //Card
            ),
            Column(
              //top: 0,
              // left: (MediaQuery.of(context).size.width - 370) / 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InMini(),
                        ));
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4.5,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.electrical_services,
                              color: Colors.purpleAccent,
                            ),
                            const SizedBox(
                              height: 10,
                            ), //SizedBox
                            Text(
                              'MINING',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                              ), //Textstyle
                            ),
                            Row(
                              children: [
                                // Image(image: AssetImage('assets/img/cube.png'))
                              ],
                            ), //Text
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
              ],

              //Card
            ),
            Column(
              //top: 0,
              //left: (MediaQuery.of(context).size.width - 370) / 2,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ineee(),
                        ));
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4.5,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.map,
                              color: Colors.lightGreen,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'IT',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                // Image(image: AssetImage('assets/img/cube.png'))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 100,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //Positioned
          ],
        ),
      )),
    );
  }
}
