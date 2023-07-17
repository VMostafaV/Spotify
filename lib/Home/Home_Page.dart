import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Home/Top_Singer/Top_Singer.dart';

import 'Four_Floor/Four_Floor.dart';
import 'Four_Floor/Recently_played/Recently.dart';
import 'Four_Floor/Singer/Singer.dart';
import 'Four_Floor/Tops/Made_for_Y.dart';
import 'Homy/Homy_Floor.dart';
import 'Libarary/Libarary_top.dart';
import 'Search_Room/Search_Room.dart';
import 'Sec_Floor/SecF.dart';
import 'ThirdFloor/Third_Floor.dart';
// class MyHome extends StatelessWidget {
//   const MyHome({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> MWidget=[
//       HomePage(),
//       MadeForY(),
//       TopSInger(),
//
//     ];
//     return Scaffold(
//       body: MWidget.elementAt(uns),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> MWidget = [
    HomePage2(),
    SearchRoom(),
    Libarary(),
    // Player()
  ];
  int unSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: unSelected,
          onTap: (index) {
            setState(() {
              unSelected = index;
            });
          },
          unselectedLabelStyle: TextStyle(color: Colors.white54),
          backgroundColor: Colors.black12,
          showSelectedLabels: true,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white54,
          useLegacyColorScheme: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search), label: 'search'),

            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'Your library'),
            // BottomNavigationBarItem(icon:   Icon(CupertinoIcons.line_horizontal_3)
            // ,label: 'Liruqs'
            // ),
            // BottomNavigationBarItem(
            //   icon:   Icon(CupertinoIcons.music_note_2),
            //   label: 'Music',
            // ),
          ],
        ),
        body: SafeArea(child: MWidget.elementAt(unSelected)));
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 20),
        Homy(),

        SizedBox(height: 10),
        SecF(),

        SizedBox(height: 10),
        ThirdF(),

        // SizedBox(height: 10),
        TopS(), //top
        // song mix
        SizedBox(height: 30),
        MadeForY(), //
        // made for you
        SizedBox(height: 30),
        Recently(), // Recently played

        SizedBox(height: 30),
        Singer(), // Famous Singer

        SizedBox(height: 30),
        TopSInger(), //top
      ],
    );
  }
}



// First floor

// Secend Floor

// Third Floor
