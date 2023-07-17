import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  double curntVal = 1;
  bool _LitghGreen = false;
  bool _LitghGreen1 = false;
  bool _LitghGreen2 = false;
  bool _LitghGreen3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 0, 0, 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: double.infinity,
                color: const Color.fromARGB(31, 214, 198, 198),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 130),
                      child: Text(
                        'Setting',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 1),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(
                  child: Text(
                    'Free Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text(
                        'Go Premium',
                        style: TextStyle(
                            color: Color.fromARGB(235, 0, 0, 0),
                            fontSize: 15,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'MyFont'),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: const Color.fromARGB(255, 30, 131, 145),
                        ),
                        child: const Center(
                          child: Text(
                            '9',
                            style: TextStyle(
                                color: Color.fromARGB(235, 255, 254, 254),
                                fontSize: 35,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MyFont'),
                          ),
                        )),
                    Column(
                      children: const [
                        Text(
                          ' Your Key: 6wojfslfedasd5',
                          style: TextStyle(
                              color: Color.fromARGB(235, 255, 254, 254),
                              fontSize: 15,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'MyFont'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 100, top: 5),
                          child: Text(
                            ' View Your Profile',
                            style: TextStyle(
                                color: Color.fromARGB(235, 92, 89, 89),
                                fontSize: 12,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'MyFont'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                ' video Podcast',
                style: TextStyle(
                  color: Color.fromARGB(235, 253, 253, 253),
                  fontSize: 17,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'View Your Profile',
                      style: TextStyle(
                        color: Color.fromARGB(235, 253, 253, 253),
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                    Switch.adaptive(
                      activeColor: Colors.green,
                      inactiveThumbColor: Colors.grey,
                      value: _LitghGreen,
                      onChanged: (bool value) {
                        setState(() {
                          _LitghGreen = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Stream audio only',
                      style: TextStyle(
                        color: Color.fromARGB(235, 253, 253, 253),
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                    Switch.adaptive(
                      activeColor: Colors.green,
                      inactiveThumbColor: Colors.grey,
                      value: _LitghGreen1,
                      onChanged: (bool value) {
                        setState(() {
                          _LitghGreen1 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'DownLoad audio only',
                      style: TextStyle(
                        color: Color.fromARGB(235, 253, 253, 253),
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                    ),
                    Switch.adaptive(
                      activeColor: Colors.green,
                      inactiveThumbColor: Colors.grey,
                      value: _LitghGreen2,
                      onChanged: (bool value) {
                        setState(() {
                          _LitghGreen2 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          'Note: all the docs are kept up to date to reflect the',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                      const Text('content of the current newest release. ',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                ' Playback',
                style: TextStyle(
                  color: Color.fromARGB(235, 253, 253, 253),
                  fontSize: 17,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Slider(
                    value: curntVal,
                    onChanged: (selectVal) {
                      setState(() {
                        curntVal = selectVal;
                      });
                    },
                    divisions: 10,
                    min: 0,
                    max: 20,
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey,
                  ),
                  Text(
                    curntVal.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Gapless',
                              style: TextStyle(
                                  color: Color.fromARGB(235, 253, 253, 253),
                                  fontSize: 17,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              'Allow gapless playback',
                              style: TextStyle(
                                color: Color.fromARGB(235, 112, 107, 107),
                                fontSize: 10,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        Switch.adaptive(
                          activeColor: Colors.green,
                          inactiveThumbColor: Colors.grey,
                          value: _LitghGreen3,
                          onChanged: (bool value) {
                            setState(() {
                              _LitghGreen3 = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
