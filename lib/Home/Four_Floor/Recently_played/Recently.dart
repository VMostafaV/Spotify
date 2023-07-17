import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Home/Libarary/Libarary_top.dart';
import 'package:spotify/Player/Player.dart';
import 'package:spotify/Player/Screen.dart';
import 'package:spotify/Propartes/Data.dart';

class Recently extends StatefulWidget {
  const Recently({Key? key}) : super(key: key);

  @override
  State<Recently> createState() => _RecentlyState();
}

class _RecentlyState extends State<Recently> {
  final List<MList> items = List.from(listItems);
  int Pageno = 0;
  late final PageController pageController;
  List<String> MyImage = [
    'image/p57.png',
    'image/p58.png',
    'image/p59.png',
    'image/p62.png',
    'image/p42.png',
    'image/p42.png',
    'image/p43.png',
    'image/p44.png',
    'image/p41.png',
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
      keepPage: true,
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
                backgroundImage: AssetImage('image/p13.png'),
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
                    'Recently',
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
