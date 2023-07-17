import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Propartes/image.dart';

class SearchRoom extends StatefulWidget {
  const SearchRoom({Key? key}) : super(key: key);

  @override
  State<SearchRoom> createState() => _SearchRoomState();
}

final TextEditingController textEditController = TextEditingController(
  text: 'What do you wante to listn to🎶?',
);

class _SearchRoomState extends State<SearchRoom> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black87,
      body: HomeRoom(),
    );
  }
}

class HomeRoom extends StatelessWidget {
  const HomeRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  CupertinoIcons.camera,
                  color: Colors.white,
                ),
              )
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 10, left: 10),
          //   child: Container(
          //     width: 370,
          //     height: 60,
          //     decoration: BoxDecoration(
          //         color: Colors.white70,
          //         borderRadius: BorderRadius.circular(20)),
          //     child: Row(
          //       children: [
          //         const Padding(
          //           padding: EdgeInsets.all(8.0),
          //           child: Icon(CupertinoIcons.search),
          //         ),
          //         // const Text(
          //         //   'What do you wante to listn to🎶?',
          //         //   style: TextStyle(),
          //         // ),
          //         CupertinoSearchTextField(),
          //         Padding(
          //           padding: const EdgeInsets.only(left: 40),
          //           child: TextButton(
          //             onPressed: () {},
          //             child: const Text(
          //               'GO',
          //               style: TextStyle(
          //                   color: Color.fromARGB(255, 191, 2, 248),
          //                   fontSize: 20,
          //                   fontWeight: FontWeight.bold),
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 50,
              child: CupertinoSearchTextField(
                style: TextStyle(color: Colors.white),
                controller: textEditController,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'Browse all',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Sort by',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.sort,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          GridA()
        ],
      ),
    );
  }
}

class GridA extends StatefulWidget {
  @override
  State<GridA> createState() => _GridAState();
}

class _GridAState extends State<GridA> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> title = [
    ' Hip Hop',
    'Dance',
    'Rock',
    'Movie ',
    'Indian ',
    'Favioet ',
    '  Rock',
    'Movie ',
    'Indian ',
    'Favioet  ',
    'Hip Hop',
    'Dance',
    'Rock',
    'Movie ',
    'Indian ',
    'Favioet ',
  ];

  List<String> Title = [
    'New Prande With cool Collection Nice!',
    'The Best Prand Ever you like it !',
    'You looking for more action dear you!',
    'The Trifay shose ever with simple Torse "yeah"  ',
    'New Prande With cool Collection Nice!',
    'The Best Prand Ever you like it !',
    'You looking for more action dear you!',
    'The Trifay shose ever with simple Torse "yeah" ',
    'New Prande With cool Collection Nice!',
  ];

  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTm7d_XtLc1bcNDRIsl-w5CakxX7vJwJeXQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPJ9xXjFTAsH5ILRFl7_gZp8L_vZWQ6ARYBA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKAJWySqafzsqTSVfdBTcOzc3E3P_jpic3bg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6REmo9hFr55PsDvi5hTQN0geJSiV3jpAIQg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPJ9xXjFTAsH5ILRFl7_gZp8L_vZWQ6ARYBA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTlvvNo86zOE8gOtpgJyoMdw1wdspJI-4QsIKqnf03WLn7GWV2lXOKfL5aAoAqfhZBQOs&usqp=CAU',
    'https://cdn.shopify.com/s/files/1/0833/9171/t/4/assets/slide_2.jpg?v=175445062721631031861657271761',
    // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJcC5QB2-9FIb_VENruroA49iZG8SvIXGTQg&usqp=CAU',
    // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTm7d_XtLc1bcNDRIsl-w5CakxX7vJwJeXQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3e02LeH6WXVbifwaf2TVldOutLrMTtsxuLQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3e02LeH6WXVbifwaf2TVldOutLrMTtsxuLQ&usqp=CAU'
  ];

  List<String> Price = [
    '250L.E',
    '165.E',
    '360.E',
    '210.E',
    '699.E',
    '299.E',
    '199.E',
    '250L.E',
    '159.E',
  ];

  List<String> Likes = [
    '250k',
    '1.6k',
    '360',
    '321',
    '652k',
    '363k',
    '985k',
    '252k',
    '122k',
  ];
  List<String> SupTitle = [
    'Frinsh one',
    'Germen',
    'Holandi',
    'India',
    'Egyptian',
    'Marco',
    'Turkis',
    'Barazil',
    'Eroub',
  ];
  List<String> MyImage = [
    'image/p16.png',
    'image/p17.png',
    'image/p18.png',
    'image/p19.png',
    'image/p20.png',
    'image/p21.png',
    'image/p22.png',
    'image/p23.png',
    'image/p24.png',
    'image/p25.png',
    'image/p26.png',
    'image/p27.png',
    'image/p1.jpg',
    'image/p4.png',
    'image/p6.jpg',
    'image/p7.jpg',
  ];
  List<Color> MyColors = [
    Colors.red,
    Colors.blue,
    Color.fromARGB(255, 11, 145, 145),
    Colors.green,
    Colors.white54,
    Colors.red,
    Colors.blue,
    Colors.pinkAccent,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.green,
    Colors.white54,
    Colors.red,
    Colors.blue,
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 100),
      itemCount: MyImage.length,
      itemBuilder: (_, index) {
        return Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: MyColors[index],
          ),
          child: Stack(children: [
            // ImageP(
            //   ImageUrl: 'image/p13.png',
            //   size: 200,
            // )
            Image.asset(MyImage[index]),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Text(
                title[index],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        );
      },
    );
  }
}
