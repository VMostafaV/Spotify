import 'package:flutter/material.dart';

class BellPage extends StatelessWidget {
  const BellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(251, 31, 30, 30),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const Text(
                'Whats New',
                style: TextStyle(
                    color: Colors.white, fontSize: 40, fontFamily: 'MyFont'),
              ),
              const Text(
                '  The latest releas from artist, podcast,and shows   you follow',
                style: TextStyle(
                    color: Color.fromARGB(255, 148, 146, 146),
                    fontSize: 12,
                    fontFamily: 'MyFont'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Home ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Music ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Podcasts & Shows',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                textAlign: TextAlign.center,
                'We dont have any updates for you ',
                style: TextStyle(
                    color: Colors.white, fontSize: 25, fontFamily: 'MyFont'),
              ),
              const Text(
                textAlign: TextAlign.center,
                'When theres news,well post it here,follow your favorit Artits and poscast st stay updated on them too',
                style: TextStyle(
                    color: Color.fromARGB(255, 148, 146, 146),
                    fontSize: 13,
                    fontFamily: 'MyFont'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
