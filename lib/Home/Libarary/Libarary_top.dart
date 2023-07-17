import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/animation_builder/loop_animation_builder.dart';
import 'package:spotify/Player/Screen.dart';

class Libarary extends StatelessWidget {
  const Libarary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Your Library',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.search, color: Colors.white, size: 35),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(CupertinoIcons.plus, color: Colors.white, size: 35),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 300,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black38,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: Text(
                  'PlayList ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(children: [
              InkWell(
                onTap: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => Screen())),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.red,
                          Color.fromARGB(255, 161, 104, 17),
                          Color.fromARGB(255, 247, 191, 36),
                          // Colors.red,
                        ]),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.heart_fill,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Liked Songs',
                    style: TextStyle(color: Colors.green),
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.pin_fill,
                        color: Colors.green,
                        size: 15,
                      ),
                      Text(
                        ' PlayList 🎶 15 songs ',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  )
                ],
              )
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.green,
                            title: Text('Create PlayList 🎶',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            actions: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Name :',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 214, 213, 213),
                                        borderRadius:
                                            BorderRadius.circular(35)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 220),
                                child: Text('Uploud Image',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        letterSpacing: 1)),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 100,
                                        width: 100,
                                        color: Colors.white60,
                                        child: Center(
                                          child: Icon(
                                            CupertinoIcons.plus,
                                            color: Colors.green,
                                            size: 35,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Stack(
                                      children: [
                                        RotetContainer(Container(
                                          height: 152,
                                          width: 152,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(80),
                                            gradient: LinearGradient(colors: [
                                              Color.fromARGB(207, 182, 10, 250),
                                              Color.fromARGB(255, 10, 48, 214),
                                              Color.fromARGB(207, 235, 39, 39),
                                              // Colors.red,
                                            ]),
                                          ),
                                        )),
                                        Image.asset('image/spot.png',
                                            width: 150),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          );
                        }),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.plus_app,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Add artists',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.green,
                          title: Text('Create PlayList 🎶',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          actions: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('Name :',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 214, 213, 213),
                                      borderRadius: BorderRadius.circular(35)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Text('Uploud Image',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      letterSpacing: 1)),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.white60,
                                      child: Center(
                                        child: Icon(
                                          CupertinoIcons.plus,
                                          color: Colors.green,
                                          size: 35,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Stack(
                                    children: [
                                      RotetContainer(Container(
                                        height: 152,
                                        width: 152,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(80),
                                          gradient: LinearGradient(colors: [
                                            Color.fromARGB(207, 182, 10, 250),
                                            Color.fromARGB(255, 10, 48, 214),
                                            Color.fromARGB(207, 235, 39, 39),
                                            // Colors.red,
                                          ]),
                                        ),
                                      )),
                                      Image.asset('image/spot.png', width: 150),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      }),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.plus,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Add podCast & Shows',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget RotetContainer(Widget widget) {
  return LoopAnimationBuilder<double>(
    tween: Tween(begin: 0.7, end: 2 * pi),
    duration: const Duration(seconds: 10), // for 2 seconds per iteration
    builder: (context, value, _) {
      return Transform.rotate(
        angle: value, // use value
        child: widget,
      );
    },
  );
}
