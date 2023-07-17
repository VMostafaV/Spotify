import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Player/Screen.dart';
import 'package:spotify/Player/TestPlayer.dart';
import 'package:spotify/Propartes/Animation.dart';

import '../../Player/Player.dart';

class ThirdF extends StatefulWidget {
  const ThirdF({Key? key}) : super(key: key);

  @override
  State<ThirdF> createState() => _ThirdFState();
}

class _ThirdFState extends State<ThirdF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        children: [
          Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => Screen())),
                child: Container(
                  height: 70,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // Image.asset('name'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Liked Songs',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => Screen())),
                child: Container(
                  height: 70,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('image/p44.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 5),
                            child: Text(
                              'Dance',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 7),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              width: 2,
                              height: 20,
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 65),
                            child: Container(
                              width: 70,
                              height: 5,
                              color: Colors.yellowAccent,
                            ),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Icon(CupertinoIcons.heart_fill,color: Colors.red,size: 40,),
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Sad Songs',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => Screen())),
                child: Container(
                  height: 70,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('image/p42.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 5),
                            child: Text(
                              'Hip Hop',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 7),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              width: 2,
                              height: 20,
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 65),
                            child: Container(
                              width: 70,
                              height: 5,
                              color: Colors.yellowAccent,
                            ),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Icon(CupertinoIcons.heart_fill,color: Colors.red,size: 40,),
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Top Rap',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 70,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('image/p43.png'),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 5),
                            child: Text(
                              'Mix',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 7),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Container(
                              width: 2,
                              height: 20,
                              color: Colors.yellowAccent,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 65),
                            child: Container(
                              width: 70,
                              height: 5,
                              color: Colors.yellowAccent,
                            ),
                          )
                        ],
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Icon(CupertinoIcons.heart_fill,color: Colors.red,size: 40,),
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Daily Mix',
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
