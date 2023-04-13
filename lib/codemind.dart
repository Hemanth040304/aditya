import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyCode extends StatefulWidget {
  const MyCode({Key? key}) : super(key: key);

  @override
  State<MyCode> createState() => _MyCodeState();
}

class _MyCodeState extends State<MyCode> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/img/CV.mp4',
          videoPlayerOptions:
              VideoPlayerOptions(allowBackgroundPlayback: false)),
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    flickManager.dispose();
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
              flickManager: flickManager,
            )),
            SizedBox(
              height: 50,
            ),
            Text(
              'Code Mind is a platform that focuses on crafting a skilled individual. Our unique and interactive scenario based learning modules are designed to help a student look at a problem in a life like perspective. We strongly believe that every mind isn’t alike, and therefore we give the student a chance to express their opinion rather than trying to abide by a generalized one. The platform also guides students on how they should proceed with their goals and helps them prepare for their dream job in a personalized way.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ));
  }
}
