// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.import 'dart:math';

import 'dart:math';

// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:spotify/Propartes/Data.dart';

class Player extends StatefulWidget {
  Player({
    Key? key,
    required this.imageData,
    required this.songeData,
    required this.titleData,
    required this.albumData,
  }) : super(key: key);
  String songeData;
  String imageData;
  String titleData;
  String albumData;

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final List<MList> items = List.from(listItems);
  // final Player = AudioPlayer();
  // Future<void> playAudioUrl(String Url) async {
  //   await Player.play(UrlSource(Url));
  // }
  AudioPlayer _player = AudioPlayer();
  AudioPlayer _player2 = AudioPlayer();
  double curntVal = 1;
  int _CurntIndex = 0;
  void play(int index) {
    _player.play();
    _player.setAsset(
      widget.songeData,
    );
    setState(() {
      _CurntIndex = index;
    });
  }

  void playonSlider(int index) {
    _player2.play();
    _player2.setAsset(items[index].SongeUrl);
  }

  void pause() {
    _player.pause();
  }

  void pauseonSlider() {
    _player2.pause();
  }

  List<String> SupTitle = [
    'Listin to music_ad free',
    'like',
    'Hide this Songe',
    'Add to PlayList',
    'View Album',
    'Marco',
    'Turkis',
    'Barazil',
    'Eroub',
  ];

  List<String> title = [
    'Hip Hop',
    'Dance',
    'Rock',
    'Movie Songs',
    'Indian Songs',
    'Favioet one',
    // 'Rock',
    'Movie Songs',
    // 'Indian Songs',
  ];
  List<Color> MyColors = [
    Colors.yellow,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.blueAccent,
    Colors.white54,
    Colors.blue,
    Colors.blue,
    Colors.yellow,
    Colors.green,
  ];

  bool selected = false;
  bool isPlaying = false;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 4,
      keepPage: true,
      viewportFraction: 0.99,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(207, 54, 3, 65),
            Color.fromARGB(235, 77, 12, 77),
            Color.fromARGB(207, 54, 3, 65),
            // Colors.red,
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Playing From your Libaray',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        widget.albumData,
                        style:
                            TextStyle(color: Colors.lightGreen, fontSize: 12),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.security_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // SDont forget the Widget

              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      widget.imageData,
                      width: 350,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.5),
                    child: Container(
                      height: 40,
                      width: 350.5,
                      color: Color.fromARGB(118, 19, 18, 18),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 6, left: 20),
                      child: RotetContainer(
                        Image.asset('image/spot.png', width: 30),
                      )),
                ],
              ),

              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  widget.songeData,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      widget.albumData,
                      style: TextStyle(
                          color: Colors.white, fontSize: 12, letterSpacing: 4),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (selected) {
                        setState(() {
                          selected = false;
                        });
                      } else {
                        setState(() {
                          selected = true;
                        });
                      }
                    },
                    icon: selected
                        ? const Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.green,
                            size: 35,
                          )
                        : const Icon(
                            CupertinoIcons.heart,
                            color: Colors.green,
                            size: 35,
                          ),
                  )
                ],
              ),
              Slider(
                value: curntVal,
                onChanged: (selectVal) {
                  setState(() {
                    curntVal = selectVal;
                  });
                },
                divisions: 10,
                min: 0,
                max: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      curntVal.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Text(
                      curntVal.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        // _CurntIndex = 2;
                      });
                    },
                    icon: const Icon(
                      CupertinoIcons.shuffle,
                      color: Color.fromARGB(255, 134, 127, 127),
                      size: 25,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.backward_end_fill,
                        color: Color.fromARGB(255, 134, 127, 127),
                        size: 35,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20, left: 20),
                        child: Center(
                            child: IconButton(
                          onPressed: () {
                            if (isPlaying) {
                              setState(() {
                                isPlaying = false;
                              });
                              // play();
                              pause();
                              //    StopMusic();
                            } else {
                              setState(() {
                                isPlaying = true;
                              });
                              // pause();
                              play(_CurntIndex);
                              //    playMusic();
                            }
                          },
                          icon: isPlaying
                              ? const Icon(
                                  CupertinoIcons.pause,
                                  color: Colors.white,
                                  size: 35,
                                )
                              : const Icon(
                                  CupertinoIcons.play_arrow_solid,
                                  color: Colors.white,
                                  size: 37,
                                ),
                        )),
                      ),
                      const Icon(
                        CupertinoIcons.forward_end_fill,
                        color: Color.fromARGB(255, 134, 127, 127),
                        size: 35,
                      ),
                    ],
                  ),
                  const Icon(
                    CupertinoIcons.repeat,
                    color: Color.fromARGB(255, 134, 127, 127),
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // playMusic() {
  //   playAudioUrl(
  //       'https://filesamples.com/samples/audio/mp3/Symphony%20No.6%20(1st%20movement).mp3');
  //   // player.play();
  // }

  // StopMusic() {
  //   Player.stop();
  // }
}

Widget RotetContainer(Widget widget) {
  return LoopAnimationBuilder<double>(
    tween: Tween(begin: 0.5, end: 2 * pi),
    duration: const Duration(seconds: 10), // for 2 seconds per iteration
    builder: (context, value, _) {
      return Transform.rotate(
        angle: value, // use value
        child: widget,
      );
    },
  );
} // 0� to 360� (2?)

//  Container(
//                 height: 300,
//                 width: 500,
//                 decoration: BoxDecoration(
//                     color: Colors.green[400],
//                     borderRadius: BorderRadius.circular(25)),
//                 child: const Padding(
//                   padding: EdgeInsets.only(right: 15, left: 15, top: 15),
//                   child: Text(
//                     'Every body have a trable ,'
//                     ' if you think it make it duble , '
//                     'Be Happy ,'
//                     ' Be Happy ,',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 35,
//                       letterSpacing: 1,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),