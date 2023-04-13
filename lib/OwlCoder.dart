import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyOwl extends StatefulWidget {
  const MyOwl({Key? key}) : super(key: key);

  @override
  State<MyOwl> createState() => _MyOwlState();
}

class _MyOwlState extends State<MyOwl> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/img/OV.mp4',
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
              'Owl coder is an Innovative Training Program of 60 days which enhances trainees on Coding skills like Data Structures and Algorithms, Problem solving skills, Aptitude, Reasoning and Soft skills. This training happens from 4.00p.m to 12.00a.m. Trainees are given awareness on Interview skills and conducted Mock interviews on both Technical and HR rounds. It was proven a successful initiative by our CEO which reflected on the placements of highest packages.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ));
  }
}
