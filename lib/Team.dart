import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/img/TTV.mp4',
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
              'Founded back on the 3rd of February 2016, our journey has been quite an adventurously successful one. Over time our team has taken up commercial and social projects and developed apps, games, softwares, websites and a whole lot more. Our experienced developers are certified in an array of languages and can handle anything that comes their way.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ));
  }
}
