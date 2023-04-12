import 'package:aditya/MinSar.dart';
import 'package:flutter/material.dart';

import 'MinPre.dart';

class InMini extends StatelessWidget {
  const InMini({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (_) => const MinPre(
                        url:
                            'https://aec.edu.in/Academic_Regulations/1.%20AR20%20B.Tech%20Academic%20Regulations.pdf',
                      ),
                    ),
                  );
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
                            Icons.people_alt_rounded,
                            color: Colors.cyanAccent,
                          ),
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MinSar(),
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
                                Icons.people_alt_rounded,
                                color: Colors.pink,
                              ),
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
                ],
              ),
              Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (_) => const MinPre(
                          url:
                              'https://aec.edu.in/Academic_Regulations/1.%20AR20%20B.Tech%20Academic%20Regulations.pdf',
                        ),
                      ),
                    );
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
                            Icon(Icons.people_alt_rounded,
                                color: Colors.orange),
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
                )
              ]),
            ]),
      ),
    );
  }
}
