import 'package:aditya/Project.dart';
import 'package:flutter/material.dart';
import 'DriveReady.dart';
import 'OwlCoder.dart';
import 'Tconnect.dart';
import 'Team.dart';
import 'codemind.dart';

class MyHub extends StatefulWidget {
  const MyHub({super.key});

  @override
  State<MyHub> createState() => _MyHubState();
}

class _MyHubState extends State<MyHub> {
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    double pd = MediaQuery.of(context).size.height * 0.03;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: Colors.orange[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 5,
            ),
            Image.asset(
              'assets/img/aec.png',
              height: 250,
              width: 250,
            ),
          ],
        ),
      ),
      body: ListView(padding: EdgeInsets.all(15.0), children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<dynamic>(builder: (_) => MyTeam()),
                );
              },
              child: Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  width: wi / 1.25,
                  height: hi / 2.75,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(15)),

                        Image(
                          image: AssetImage('assets/img/technicalhub.png'),
                          alignment: Alignment.topCenter,
                        ),

                        const SizedBox(
                          height: 10,
                        ), //SizedBox
                        const Text(
                          '''Technical Hub provides the trainings which are certification aligned and associated with various vendors that are top in the industry. Members who are part of this program are given a constant practical example on various topics, thus keeping them abreast of their technological world.''',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ), //Textstyle
                        ), //Text
                        const SizedBox(
                          height: 10,
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
                        MaterialPageRoute<dynamic>(builder: (_) => MyOwl()),
                      );
                    },
                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        width: wi / 1.25,
                        height: hi / 4,

                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Image(
                                image: AssetImage('assets/img/OWLCODER.png'),
                                alignment: Alignment.center,
                                height: 100,
                              ),

                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              //Text
                            ],
                          ),
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
                      MaterialPageRoute<dynamic>(builder: (_) => MyTc()),
                    );
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Image(
                              image: AssetImage('assets/img/TCONNECT.png'),
                              alignment: Alignment.center,
                              height: 100,
                            ),
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
                      MaterialPageRoute<dynamic>(builder: (_) => MyCode()),
                    );
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Image(
                              image: AssetImage('assets/img/CODEMIND.png'),
                              alignment: Alignment.center,
                              height: 125,
                            ),
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
                      MaterialPageRoute<dynamic>(builder: (_) => MyProj()),
                    );
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Image(
                              image: AssetImage('assets/img/PS.png'),
                              alignment: Alignment.center,
                              height: 125,
                            ),
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
                      MaterialPageRoute<dynamic>(builder: (_) => MyDR()),
                    );
                  },
                  child: Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: SizedBox(
                      width: wi / 1.25,
                      height: hi / 4,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15)),
                            Image(
                              image: AssetImage('assets/img/DR.png'),
                              alignment: Alignment.center,
                              height: 100,
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
      ]),
    );
  }
}
