import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify/Home/Libarary/Libarary_top.dart';
import 'package:spotify/Player/Player.dart';
import 'package:spotify/Player/Screen.dart';
import 'package:spotify/Propartes/Data.dart';

class TopS extends StatefulWidget {
  const TopS({Key? key}) : super(key: key);

  @override
  State<TopS> createState() => _TopSState();
}

class _TopSState extends State<TopS> {
  AudioPlayer _player = AudioPlayer();
  bool isPlaying = false;
  bool selected = false;
  final List<MList> items = List.from(listItems);
  int Pageno = 0;
  late final PageController pageController;
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

  List<String> MyImage = [
    'image/p4.png',
    'image/p3.jpg',
    'image/p2.jpg',
    'image/p1.jpg',
    'image/p4.png',
    'image/p5.jpg',
    'image/p6.jpg',
    'image/p7.jpg',
    'image/p8.jpg',
  ];
  List<String> title = [
    'Hip Hop',
    'Dance',
    'Rock',
    'Movie Songs',
    'Indian Songs',
    'Favioet one',
    'Rock',
    'Movie Songs',
    'Indian Songs',
  ];
  List<Color> MyColors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.white54,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(
      initialPage: 5,
      keepPage: false,
      viewportFraction: 0.53,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('image/p41.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Text(
                    'Top Songs',
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: 2,
                        fontFamily: 'MyFont'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    'HipHop',
                    style: TextStyle(
                        color: Colors.greenAccent,
                        // fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 2),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 260,
          child: PageView.builder(
              controller: pageController,
              itemCount: MyImage.length,
              itemBuilder: (Context, index) {
                return Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Player(
                          songeData: items[index].SongeUrl,
                          imageData: items[index].ImageUrl,
                          titleData: items[index].SongName,
                          albumData: items[index].NameAlbum,
                        ),
                      )),
                      onDoubleTap: () {
                        play(index);
                      },
                      child: Stack(children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.asset(items[index].ImageUrl),
                        ),
                        Container(
                          height: 30,
                          width: 200,
                          color: Colors.black26,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Image.asset('image/spot.png', width: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150, left: 7),
                          child: Text(
                            title[index],
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 150),
                          child: Container(
                            width: 3,
                            height: 20,
                            color: MyColors[index],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 195),
                          child: Container(
                            width: 200,
                            height: 8,
                            color: MyColors[index],
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      width: 200,
                      child: Column(
                        children: [
                          Column(children: [
                            Text(
                              '${items[index].SongeUrl}',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(right: 110),
                            //   child: Text(
                            //    ${DList[index].NameAlbum},
                            //     style: TextStyle(
                            //         color: Colors.greenAccent, fontSize: 15),
                            //   ),
                            // ),
                          ]),
                        ],
                      ),
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
