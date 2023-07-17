import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Home/Libarary/Libarary_top.dart';
import 'package:spotify/Player/Screen.dart';
import 'package:spotify/Propartes/Data.dart';

class TopSInger extends StatefulWidget {
  const TopSInger({Key? key}) : super(key: key);

  @override
  State<TopSInger> createState() => _TopSIngerState();
}

class _TopSIngerState extends State<TopSInger> {
  final List<MList> DList = List.from(listItems);
  int Pageno = 0;
  late final PageController pageController;
  List<String> MyImage = [
    'image/p9.png',
    'image/p10.png',
    'image/p11.png',
    'image/p12.png',
    'image/p13.png',
    'image/p14.png',
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
      initialPage: 2,
      keepPage: false,
      viewportFraction: 0.60,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.black26, boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 3, spreadRadius: 1)
          ]),
          height: 50,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Top Recommend',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 2),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 250,
          child: PageView.builder(
              controller: pageController,
              itemCount: MyImage.length,
              itemBuilder: (Context, index) {
                return Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(children: [
                      CupertinoContextMenu(
                        actions: [
                          CupertinoContextMenuAction(
                            child: Center(
                              child: Text(
                                'Listn Now',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 143, 25, 9),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    letterSpacing: 2),
                              ),
                            ),
                            onPressed: () => Navigator.of(context).push(
                                CupertinoPageRoute(builder: (_) => Screen())),
                          ),
                          CupertinoContextMenuAction(
                            child: Center(
                              child: Text(
                                'Libarary',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 11, 202, 17),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    letterSpacing: 2),
                              ),
                            ),
                            onPressed: () => Navigator.of(context).push(
                                CupertinoPageRoute(builder: (_) => Libarary())),
                          )
                        ],
                        child: SizedBox(
                          height: 200,
                          width: 200,
                          child: Image.asset(DList[index].ImageUrl),
                        ),
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
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      child: Column(
                        children: [
                          Column(children: [
                            Text(
                              '${DList[index].NameSinger}${DList[index].SongName} ${DList[index].NameAlbum}',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
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
