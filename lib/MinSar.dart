import 'package:flutter/material.dart';

class MinSar extends StatelessWidget {
  const MinSar({Key? key}) : super(key: key);

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
          children: [Card(
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
                      'PART-A',
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

            Card(
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
                        'PART-B',
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
            ),],

        ),
      ),
    );
  }
}
