import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:pdfx/pdfx.dart';

class MySSR extends StatefulWidget {
  const MySSR({Key? key}) : super(key: key);

  @override
  State<MySSR> createState() => _MySSRState();
}

class _MySSRState extends State<MySSR> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/img/SSR.pdf'),
  );

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 75,
          backgroundColor: Colors.orange[400],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/img/aec.png',
                height: 250,
                width: 250,
              ),
            ],
          ),
        ),
        body: Center(
          child: PdfView(
            controller: pdfController,
          ),
        ));
    return scaffold;
  }
}
