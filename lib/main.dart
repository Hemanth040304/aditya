import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'Dept.dart';
import 'Principal.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:aditya/pdfView.dart';

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
  bool _isFirstCard = false;
  bool _isSecondCard = false;
  bool _isThirdCard = false;
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/img/aec_pri.pdf'),
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
        drawerEnableOpenDragGesture: true,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: CircleAvatar(
                  child: Image.asset('assets/img/aditya1.png'),
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Add your onTap code here
                  print('Home ListTile was tapped!');
                },
              ),
              ListTile(
                title: Text(
                  'Share',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.share,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Add your onTap code here
                  print('share ListTile was tapped!');
                },
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Add your onTap code here
                  print('Settings ListTile was tapped!');
                },
              ),
              ListTile(
                title: Text(
                  'Contact us',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.add_call,
                  color: Colors.blue,
                ),
                onTap: () {
                  // Add your onTap code here
                  print('contact us ListTile was tapped!');
                },
              ),
            ],
          ),
        ),
        body: ListView(padding: EdgeInsets.all(pd), children: [
          Column(children: [
            Text(
              'NBA',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isFirstCard = true;
                  _isSecondCard = false;
                  _isThirdCard = false;
                });
              },
              child: Container(
                alignment: Alignment.topCenter,
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: _isFirstCard ? Colors.blue : Colors.white,
                  child: SizedBox(
                    width: wi / 1.25,
                    height: hi / 2.5,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
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
                            height: 80,
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
                    });
                  },
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: _isSecondCard ? Colors.orange : Colors.white,
                      child: SizedBox(
                        width: wi / 1.25,
                        height: hi / 2.5,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
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
                                height: 80,
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
                      });
                    },
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.black,
                        color: _isThirdCard ? Colors.red : Colors.white,
                        child: SizedBox(
                          width: wi / 1.25,
                          height: hi / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.apartment_sharp,
                                  size: 40,
                                  color:
                                      _isThirdCard ? Colors.white : Colors.red,
                                ),
                                const SizedBox(
                                  height: 10,
                                ), // SizedBox
                                Text(
                                  'Departments',
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
                                  'Departments',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: _isThirdCard
                                        ? Colors.white
                                        : Colors.black45,
                                  ),
// TextStyle
                                ), // Text
                                const SizedBox(
                                  height: 80,
                                ), // SizedBox
                                SizedBox(
                                  width: 125,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DeptPage(),
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
          backgroundColor: Colors.blue,
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
                height: 210,
                width: 210,
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
