import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:pdfx/pdfx.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPdf(),
    );
  }
}

class MyPdf extends StatefulWidget {
  const MyPdf({Key? key}) : super(key: key);

  @override
  State<MyPdf> createState() => _MyPdfState();
}

class _MyPdfState extends State<MyPdf> {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/img/aec_pri.pdf'),
  );

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
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
          child: PdfView(
            controller: pdfController,
          ),
        ));
    return scaffold;
  }
}
