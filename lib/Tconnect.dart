import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyTc extends StatefulWidget {
  const MyTc({Key? key}) : super(key: key);

  @override
  State<MyTc> createState() => _MyTcState();
}

class _MyTcState extends State<MyTc> {
  late FlickManager flickTV;

  @override
  void initState() {
    flickTV = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/img/TV.mp4',
          videoPlayerOptions:
              VideoPlayerOptions(allowBackgroundPlayback: false)),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    flickTV.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Container(
                child: FlickVideoPlayer(
              flickManager: flickTV,
            )),
            SizedBox(
              height: 50,
            ),
            Text(
              'T-Connect is an event that gives freshmen a chance to connect with various emerging technologies. Individuals who choose to attend the program are given the opportunity to explore and experience various emerging technologies like cloud computing, networking, coding, artificial intelligence, augmented reality, virtual reality and robotics. They are briefed about the importance of the technology and the opportunities they bring and are allowed to eventually choose a career path that best suits them.',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.justify,
            ),
          ],
        ));
  }
}
