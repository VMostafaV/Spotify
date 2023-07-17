// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.import 'dart:math';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:simple_animations/animation_builder/mirror_animation_builder.dart';
import 'package:spotify/Player/Player.dart';
import 'package:spotify/Player/TestPlayer.dart';
import 'package:spotify/Propartes/Data.dart';
import 'package:spotify/Propartes/image.dart';

class Screen extends StatefulWidget {
  const Screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final List<MList> items = List.from(listItems);

  AudioPlayer _player = AudioPlayer();

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

  List<String> MyImage = [
    'image/p2.jpg',
    'image/p3.jpg',
    'image/p2.jpg',
    'image/p1.jpg',
    'image/p4.png',
    // 'image/p5.jpg',
    'image/p6.jpg',
    'image/p7.jpg',
    // 'image/p8.jpg',
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
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool isPlaying = false;
  late PageController pageController;

  // playAudioFile() async {
  //   await audioPlayer.setAsset('mercy kanye west.mp3');
  //   audioPlayer.play();
  // }

  // @override
  // void dispose() {
  //   audioPlayer.dispose();
  //   super.dispose();
  // }
  int _CurentIndex = 0;
  void play(int index) {
    _player.play();
    _player.setAsset(items[index].SongeUrl);
    setState(() {
      _CurentIndex = index;
    });
  }

  void pause() {
    _player.pause();
  }

  void Pplay(int index) {
    _player.play();
    _player.setAsset(items[index].SongeUrl);
    setState(() {
      _CurentIndex = index;
    });
  }

  int index = 0;
  var name;
  changeImage() {
    name = items[index].ImageUrl;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 4,
      keepPage: true,
      viewportFraction: 0.99,
    );
    // name = items[index].ImageUrl;

    // AAC example: https://dl.espressif.com/dl/audio/ff-16b-2c-44100hz.aac
    // String url = items[1].SongName;
    // _player.setAsset(url);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Model(),
        child: Scaffold(
          body: Consumer<Model>(
            builder: (context, Model, child) => Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(207, 71, 11, 6),
                Color.fromARGB(255, 77, 25, 21),
                Color.fromARGB(207, 71, 11, 6),
                // Colors.red,
              ])
                  //gradient: LinearGradient(),
                  ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 10),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 400),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 56, 55, 55),
                                blurRadius: 50,
                                spreadRadius: 0.5)
                          ]),
                          child: Container(
                            height: 400,
                            width: 300,
                            child: Image.asset(
                              Model.imageP,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 40,
                          width: 300,
                          color: Color.fromARGB(71, 0, 0, 0),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 7, left: 48),
                          child: RotetContainer(
                            Image.asset('image/spot.png', width: 25),
                          )),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 219),
                      //   child: Container(
                      //     width: 226,
                      //     height: 9,
                      //     color: Color.fromARGB(255, 245, 20, 20),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 145),
                      //   child: Container(
                      //     width: 5,
                      //     height: 40,
                      //     color: Color.fromARGB(255, 245, 20, 20),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 150, left: 20),
                      //   child: Text(
                      //     items[4].NameSinger,
                      //     style: TextStyle(
                      //         color: Color.fromARGB(255, 231, 101, 101),
                      //         fontSize: 23,
                      //         fontWeight: FontWeight.bold,
                      //         letterSpacing: 1),
                      //   ),
                      // ),
                    ]),

                    // SDont forget the Widget

                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        Model.songTitleP,
                        style: TextStyle(
                            color: Color.fromARGB(255, 218, 218, 22),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        items[2].NameSinger,
                        style: TextStyle(
                            color: Color.fromARGB(255, 218, 218, 22),
                            fontSize: 13,
                            decorationStyle: TextDecorationStyle.wavy,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        '3h 42m',
                        style: TextStyle(
                            color: Color.fromARGB(255, 224, 219, 219),
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                RotetContainer(
                                  SizedBox(
                                      height: 35,
                                      width: 40,
                                      child: Image.asset('image/spot.png',
                                          scale: 20)),
                                ),
                                Text(
                                  'spotify',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 250, 250, 250),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: IconButton(
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
                                        size: 35,
                                        color: Colors.green,
                                      )
                                    : const Icon(
                                        CupertinoIcons.heart,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (isPlaying) {
                                  setState(() {
                                    isPlaying = false;
                                  });
                                } else {
                                  setState(() {
                                    setState(() {
                                      isPlaying = true;
                                    });
                                  });
                                }
                              },
                              icon: isPlaying
                                  ? const Icon(
                                      CupertinoIcons.arrow_down_circle,
                                      size: 35,
                                      color: Colors.green,
                                    )
                                  : const Icon(
                                      CupertinoIcons.arrow_down_circle,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                            ),
                            IconButton(
                              onPressed: () {
                                if (selected2) {
                                  setState(() {
                                    selected2 = false;
                                  });
                                } else {
                                  setState(() {
                                    selected2 = true;
                                  });
                                }
                              },
                              icon: selected2
                                  ? const Icon(
                                      Icons.tiktok,
                                      size: 35,
                                      color: Colors.redAccent,
                                    )
                                  : const Icon(
                                      Icons.tiktok,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.shuffle,
                              size: 33,
                              color: Colors.white,
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: IconButton(
                                  onPressed: () {
                                    if (selected3) {
                                      setState(() {
                                        selected3 = false;
                                      });
                                      pause();
                                    } else {
                                      setState(() {
                                        selected3 = true;
                                      });
                                      play(index);
                                    }
                                  },
                                  icon: selected3
                                      ? const Icon(
                                          CupertinoIcons.pause,
                                          color: Colors.green,
                                          size: 35,
                                        )
                                      : const Icon(
                                          CupertinoIcons.play_arrow_solid,
                                          color: Colors.green,
                                          size: 37,
                                        ),
                                )),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          //crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 75),
                      itemCount: items.length,
                      itemBuilder: (_, index) {
                        return Slidable(
                          startActionPane: ActionPane(
                            motion: ScrollMotion(),
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      play(index);
                                    });
                                  },
                                  icon: Icon(
                                    Icons.play_arrow_outlined,
                                    size: 40,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: pause,
                                icon: Icon(
                                  Icons.pause_circle,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                onPressed: () {
                                  showCupertinoModalPopup(
                                      context: context,
                                      builder: (BuildContext bulder) {
                                        return CupertinoPopupSurface(
                                          child: Container(
                                            height: 500,
                                            child: Scaffold(
                                              backgroundColor: Color.fromARGB(
                                                  255, 51, 49, 49),
                                              body: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20,
                                                              left: 25),
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                                    boxShadow: [
                                                                  BoxShadow(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          24,
                                                                          22,
                                                                          22),
                                                                      blurRadius:
                                                                          7,
                                                                      spreadRadius:
                                                                          1)
                                                                ]),
                                                            child: Image.asset(
                                                              items[index]
                                                                  .ImageUrl,
                                                              width: 55,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  '${items[index].NameSinger}${items[index].SongName}',
                                                                  style: TextStyle(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          190,
                                                                          186,
                                                                          186),
                                                                      fontSize:
                                                                          15),
                                                                ),
                                                                Text(
                                                                  '${items[index].NameAlbum}',
                                                                  style: TextStyle(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          190,
                                                                          186,
                                                                          186),
                                                                      fontSize:
                                                                          12),
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Divider(
                                                      color: Colors.grey,
                                                    ),
                                                    GridView.builder(
                                                        physics:
                                                            const NeverScrollableScrollPhysics(),
                                                        shrinkWrap: true,
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 10,
                                                                left: 15),
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                crossAxisCount:
                                                                    1,
                                                                mainAxisSpacing:
                                                                    25,
                                                                mainAxisExtent:
                                                                    20),
                                                        itemCount: items.length,
                                                        itemBuilder:
                                                            (_, index) {
                                                          return Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Stack(children: [
                                                                Icon(
                                                                  items[index]
                                                                      .MIcons
                                                                      .icon,
                                                                  color:
                                                                      MyColors[
                                                                          index],
                                                                ),
                                                              ]),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                SupTitle[index],
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            212,
                                                                            211,
                                                                            207)),
                                                              ),
                                                            ],
                                                          );
                                                        })
                                                  ]),
                                            ),
                                          ),
                                        );
                                      });
                                },
                                icon: Icon(
                                  CupertinoIcons.settings,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              Model.changeVal(index);

                              changeImage();
                              Pplay(index);
                            },
                            //  => Navigator.of(context)
                            //     .push(CupertinoPageRoute(builder: (_) => Player())),
                            child: ListTile(
                              leading: Image.asset(
                                items[index].ImageUrl,
                              ),
                              title: Text(
                                '${items[index].SongeUrl}',
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                '${items[index].NameAlbum}',
                                style: TextStyle(color: Colors.greenAccent),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    // Consumer<Model>(
                    //   builder: (context, Model, child) => TextButton(
                    //       onPressed: () {
                    //         setState(() {
                    //           Model.changeVal();
                    //           print('name=$name');
                    //         });
                    //       },
                    //       child: Text(Model.name1)),
                    // )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class Model extends ChangeNotifier {
  final List<MList> items = List.from(listItems);
  String imageP = 'image/n4.png';
  String songTitleP = 'Chose one of this Songs on PlayList Now !!';
  changeVal(index) {
    imageP = items[index].ImageUrl;
    songTitleP = items[index].SongeUrl;

    notifyListeners();
  }
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

Widget _ColorTransfer(Widget widget) {
  return MirrorAnimationBuilder<Color?>(
    tween: ColorTween(
      begin: Color.fromARGB(255, 72, 173, 4),
      end: Color.fromARGB(255, 223, 11, 11),
    ), // red to blue
    duration: const Duration(milliseconds: 500), // for 5 seconds per iteration
    builder: (context, value, _) {
      return Center(child: widget);
    },
  );
}
