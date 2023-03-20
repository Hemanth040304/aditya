import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class EEPdf extends StatelessWidget {
  const EEPdf({Key? key, required this.url}) : super(key: key);
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

    );

  }
}
