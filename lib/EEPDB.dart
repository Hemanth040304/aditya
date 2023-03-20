import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class EEPDB extends StatelessWidget {
  const EEPDB({Key? key, required this.url}) : super(key: key);
  final String url;

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
      body:Column(children:[Center(child: TextButton(
          child: Text('Criteria1',style:TextStyle(fontSize: 40.0)),
          onPressed: () {
            print('Pressed');
          }
      ),

      ),Center(child: TextButton(
          child: Text('Criteria2',style:TextStyle(fontSize: 40.0)),
          onPressed: () {
            print('Pressed');
          }
      ),

      ),Center(child: TextButton(
          child: Text('Criteria3',style:TextStyle(fontSize: 40.0)),
          onPressed: () {
            print('Pressed');
          }
      ),

      ),Center(child: TextButton(
          child: Text('Criteria4',style:TextStyle(fontSize: 40.0)),
          onPressed: () {
            print('Pressed');
          }
      ),

      ),Center(child: TextButton(
          child: Text('Criteria5',style:TextStyle(fontSize: 40.0)),
          onPressed: () {
            print('Pressed');
          }
      ),

      ),
        Center(child: TextButton(
            child: Text('Criteria6',style:TextStyle(fontSize: 40.0)),
            onPressed: () {
              print('Pressed');
            }
        ),

        ),
        Center(child: TextButton(
            child: Text('Criteria7',style:TextStyle(fontSize: 40.0)),
            onPressed: () {
              print('Pressed');
            }
        ),

        ),Center(child: TextButton(
            child: Text('Criteria8',style:TextStyle(fontSize: 40.0)),
            onPressed: () {
              print('Pressed');
            }
        ),

        ),
    ]));
     }
}


