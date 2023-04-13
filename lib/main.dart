import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:aditya/pdfView.dart';
import 'Thub.dart';
import 'SSR.dart';
import 'IIQA.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
  });
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late var pdfUrl = 'assets/PP.pdf';
  bool _isFirstCard = false;
  bool _isSecondCard = false;
  bool _isThirdCard = false;
  bool _isFifthCard = false;
  bool _isFourthCard = false;

  final pdfController = PdfController(
    document: PdfDocument.openAsset('pdfUrl'),
  );
  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.of(context).size.height;
    double wi = MediaQuery.of(context).size.width;
    double pd = MediaQuery.of(context).size.height * 0.03;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
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
        body: ListView(padding: EdgeInsets.all(pd), children: [
          Column(children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isFirstCard = true;
                  _isSecondCard = false;
                  _isThirdCard = false;
                  _isFourthCard = false;
                  _isFifthCard = false;
                });
              },
              child: Container(
                alignment: Alignment.topCenter,
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: _isFirstCard ? Colors.blue : Colors.white,
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
                          Icon(
                            Icons.info,
                            size: 40,
                            color: _isFirstCard ? Colors.white : Colors.blue,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 25,
                              color:
                                  _isFirstCard ? Colors.white : Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'The 200 acres huge lush green campus and an eco friendly area us situated at Surampalem.',
                            style: TextStyle(
                              fontSize: 15,
                              color:
                                  _isFirstCard ? Colors.white : Colors.black45,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: 125,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => VideoApp(),
                                  ),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  _isFirstCard ? Colors.white : Colors.blue,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Read More',
                                    style: TextStyle(
                                      color: _isFirstCard
                                          ? Colors.blue
                                          : Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_outlined,
                                    color: _isFirstCard
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isFirstCard = false;
                      _isSecondCard = true;
                      _isThirdCard = false;
                      _isFourthCard = false;
                      _isFifthCard = false;
                    });
                  },
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: _isSecondCard ? Colors.orange : Colors.white,
                      child: SizedBox(
                        width: wi / 1.25,
                        height: hi / 2.75,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(15)),
                              Icon(
                                Icons.newspaper,
                                size: 40,
                                color: _isSecondCard
                                    ? Colors.white
                                    : Colors.orange,
                              ),
                              const SizedBox(
                                height: 10,
                              ), // SizedBox
                              Text(
                                'Principal Presentation',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: _isSecondCard
                                      ? Colors.white
                                      : Colors.black54,
                                  fontWeight: FontWeight.w500,
                                ), // TextStyle
                              ),

// Text
                              const SizedBox(
                                height: 20,
                              ), // SizedBox
                              Text(
                                'Principal Presentation.',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: _isSecondCard
                                      ? Colors.white
                                      : Colors.black45,
                                ),
// TextStyle
                              ), // Text
                              const SizedBox(
                                height: 30,
                              ), // SizedBox
                              SizedBox(
                                width: 125,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute<dynamic>(
                                          builder: (_) => MyPdf()),
                                    );
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      _isSecondCard
                                          ? Colors.white
                                          : Colors.orange,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Read More',
                                        style: TextStyle(
                                          color: _isSecondCard
                                              ? Colors.orange
                                              : Colors.white,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_right_outlined,
                                        color: _isSecondCard
                                            ? Colors.orange
                                            : Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isFirstCard = false;
                        _isSecondCard = false;
                        _isThirdCard = true;
                        _isFourthCard = false;
                        _isFifthCard = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.black,
                        color: _isThirdCard ? Colors.red : Colors.white,
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
                                Icon(
                                  Icons.newspaper_outlined,
                                  size: 40,
                                  color:
                                      _isThirdCard ? Colors.white : Colors.red,
                                ),
                                const SizedBox(
                                  height: 10,
                                ), // SizedBox
                                Text(
                                  'SSR',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: _isThirdCard
                                        ? Colors.white
                                        : Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ), // TextStyle
                                ),

// Text
                                const SizedBox(
                                  height: 20,
                                ), // SizedBox
                                Text(
                                  'SSR',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: _isThirdCard
                                        ? Colors.white
                                        : Colors.black45,
                                  ),
// TextStyle
                                ), // Text
                                const SizedBox(
                                  height: 30,
                                ), // SizedBox
                                SizedBox(
                                  width: 125,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MySSR(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        _isThirdCard
                                            ? Colors.white
                                            : Colors.red,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Read More',
                                          style: TextStyle(
                                            color: _isThirdCard
                                                ? Colors.red
                                                : Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: _isThirdCard
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isFirstCard = false;
                        _isSecondCard = false;
                        _isThirdCard = false;
                        _isFourthCard = false;
                        _isFifthCard = true;
                      });
                    },
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.black,
                        color: _isFifthCard ? Colors.purple : Colors.white,
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
                                Icon(
                                  Icons.newspaper_outlined,
                                  size: 40,
                                  color: _isFifthCard
                                      ? Colors.white
                                      : Colors.purple,
                                ),
                                const SizedBox(
                                  height: 10,
                                ), // SizedBox
                                Text(
                                  'IIQA',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: _isFifthCard
                                        ? Colors.white
                                        : Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ), // TextStyle
                                ),

// Text
                                const SizedBox(
                                  height: 20,
                                ), // SizedBox
                                Text(
                                  'IIQA',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: _isFifthCard
                                        ? Colors.white
                                        : Colors.black45,
                                  ),
// TextStyle
                                ), // Text
                                const SizedBox(
                                  height: 30,
                                ), // SizedBox
                                SizedBox(
                                  width: 125,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyIIQA(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(_isFifthCard
                                              ? Colors.white
                                              : Colors.purple),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Read More',
                                          style: TextStyle(
                                            color: _isFifthCard
                                                ? Colors.purple
                                                : Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: _isFifthCard
                                              ? Colors.purple
                                              : Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isFirstCard = false;
                        _isSecondCard = false;
                        _isThirdCard = false;
                        _isFourthCard = true;
                        _isFifthCard = false;
                      });
                    },
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.black,
                        color: _isFourthCard ? Colors.green : Colors.white,
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
                                Icon(
                                  Icons.model_training_outlined,
                                  size: 40,
                                  color: _isFourthCard
                                      ? Colors.white
                                      : Colors.green,
                                ),
                                const SizedBox(
                                  height: 10,
                                ), // SizedBox
                                Text(
                                  'Training and Placement',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: _isFourthCard
                                        ? Colors.white
                                        : Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ), // TextStyle
                                ),

// Text
                                const SizedBox(
                                  height: 20,
                                ), // SizedBox
                                Text(
                                  'Training and Placement',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: _isFourthCard
                                        ? Colors.white
                                        : Colors.black45,
                                  ),
// TextStyle
                                ), // Text
                                const SizedBox(
                                  height: 30,
                                ), // SizedBox
                                SizedBox(
                                  width: 125,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyHub(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        _isFourthCard
                                            ? Colors.white
                                            : Colors.green,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Read More',
                                          style: TextStyle(
                                            color: _isFourthCard
                                                ? Colors.green
                                                : Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: _isFourthCard
                                              ? Colors.green
                                              : Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ])
        ]),
      ),
    );
  }
}

class VideoApp extends StatefulWidget {
  const VideoApp({Key? key}) : super(key: key);

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/img/aditya.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABOUT AEC',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 75,
          backgroundColor: Colors.orange[400],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(),
          ),
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
        backgroundColor: Colors.black,
        body: Center(
          child: _controller.value.isInitialized
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    ),
                    SizedBox(height: 10),
                  ],
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
