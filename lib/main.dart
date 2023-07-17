import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'Home/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: AudioServiceWidget(child: MyHomePage())
      home: const MyHomePage(),
    );
  }
}

// _BackGroundTaskEntyPoint() {
//   AudioServiceBackground.run(() => AudioPlayerTask());
// }

// class AudioPlayerTask extends BackgroundAudioTask {
//   final _audioPlayer = AudioPlayer();
//   @override
//   Future<void> onStart(Map<String, dynamic>? params) async {
//     AudioServiceBackground.setState(
//         controls: [MediaControl.pause, MediaControl.stop],
//         playing: true,
//         processingState: AudioProcessingState.loading);
//     await _audioPlayer.setSourceUrl(params![""]);
//     _audioPlayer.play(params['']);
//     AudioServiceBackground.setState(
//         controls: [MediaControl.pause, MediaControl.stop],
//         playing: true,
//         processingState: AudioProcessingState.ready);
//     return super.onStart(params);
//   }

//   @override
//   Future<void> onStop() {
//     // TODO: implement onStop
//     return super.onStop();
//   }

//   @override
//   Future<void> onPause() {
//     // TODO: implement onPause
//     return super.onPause();
//   }

//   @override
//   Future<void> onPlay() {
//     // TODO: implement onPlay
//     return super.onPlay();
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final player = AudioPlayer();
  Future<void> playAudioUrl(String Url) async {
    await player.play(UrlSource(Url));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // player.play(AssetSource('Not Afraid.mp3'));
              playAudioUrl(
                  'https://filesamples.com/samples/audio/mp3/Symphony%20No.6%20(1st%20movement).mp3');
            },
            child: Center(child: Text('Play')),
          ),
        ),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // player.play(AssetSource('Not Afraid.mp3'));
              player.stop();
            },
            child: Center(child: Text('Stop')),
          ),
        ),
      ],
    ));
  }
}
