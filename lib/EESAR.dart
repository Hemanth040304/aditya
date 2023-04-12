import 'package:flutter/material.dart';

import 'EEPDB.dart';
import 'EEPdf.dart';

class SAR extends StatelessWidget {
  const SAR({Key? key}) : super(key: key);

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
                        builder: (context) => EEPdf(
                          url:
                              'https://aec.edu.in/Academic_Regulations/1.%20AR20%20B.Tech%20Academic%20Regulations.pdf',
                        ),
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
                            'PART-A',
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
                              builder: (context) => EEPDB(
                                url:
                                    'https://aec.edu.in/Academic_Regulations/1.%20AR20%20B.Tech%20Academic%20Regulations.pdf',
                              ),
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
                                  'PART-B',
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
                  ])
            ]))));
  }
}
