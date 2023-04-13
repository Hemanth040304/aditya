import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyDR extends StatefulWidget {
  const MyDR({Key? key}) : super(key: key);

  @override
  State<MyDR> createState() => _MyDRState();
}

class _MyDRState extends State<MyDR> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/img/DRV.mp4',
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
              'Drive Ready is a program designed to help attendees familiarize themselves with a technology and coding language of their choice. This hybrid mode of training ensures that every attendee is ready to ace every interview they attend. The trainings offered in this program are usually job specific and is designed to help the attendee acquire the adequate skills required to efficiently begin their career.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ));
  }
}
