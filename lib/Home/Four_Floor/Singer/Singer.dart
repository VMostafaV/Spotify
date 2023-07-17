import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Home/Libarary/Libarary_top.dart';
import 'package:spotify/Player/Player.dart';
import 'package:spotify/Player/Screen.dart';
import 'package:spotify/Propartes/Data.dart';

class Singer extends StatefulWidget {
  const Singer({Key? key}) : super(key: key);

  @override
  State<Singer> createState() => _SingerState();
}

class _SingerState extends State<Singer> {
  final List<MList> items = List.from(listItems);
  int Pageno = 0;
  late final PageController pageController;
  List<String> MyImage = [
    'image/p2.jpg',
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
      initialPage: 7,
      keepPage: true,
      viewportFraction: 0.65,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('image/p11.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Text(
                    'MORE LIKE',
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        fontSize: 17,
                        letterSpacing: 4,
                        fontFamily: 'MyFont'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    items[2].NameSinger,
                    style: const TextStyle(
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
        const SizedBox(
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
                          imageData: items[index].ImageUrl2,
                          titleData: items[index].SongName,
                          albumData: items[index].NameAlbum,
                        ),
                      )),
                      child: Stack(children: [
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.asset(items[index].ImageUrl2),
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
                            style: const TextStyle(color: Colors.white, fontSize: 12),
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
                    const SizedBox(
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
                                  const TextStyle(color: Colors.grey, fontSize: 12),
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
