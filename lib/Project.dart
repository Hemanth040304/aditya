import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyProj extends StatefulWidget {
  const MyProj({Key? key}) : super(key: key);

  @override
  State<MyProj> createState() => _MyProjState();
}

class _MyProjState extends State<MyProj> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/img/PSV.mp4',
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
              'Project space is a feature rich environment designed to encourage individuals to develop and showcase real-time problems and further find effective solutions that can help overcome them. Every individual who chooses to utilize this space pockets themselves a chance that could possibly get them one step closer to their dream job.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ));
  }
}
