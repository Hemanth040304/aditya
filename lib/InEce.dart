import 'package:flutter/material.dart';

class InEce extends StatelessWidget {
  const InEce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
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
      ),),
    );
  }
}
