import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Settings/Bell.dart';
import 'package:spotify/Settings/Settings.dart';

class Homy extends StatefulWidget {
  const Homy({Key? key}) : super(key: key);

  @override
  State<Homy> createState() => _HomyState();
}

class _HomyState extends State<Homy> {
  bool selected2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Good Afternoon',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'MyFont',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => BellPage())),
                icon: Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: IconButton(
                  onPressed: () {
                    if (selected2) {
                      setState(() {
                        selected2 = false;
                      });
                    } else {
                      setState(() {
                        selected2 = true;
                      });
                    }
                  },
                  icon: selected2
                      ? const Icon(
                          Icons.tiktok,
                          size: 35,
                          color: Colors.redAccent,
                        )
                      : const Icon(
                          Icons.tiktok,
                          size: 35,
                          color: Colors.white,
                        ),
                ),
              ),
              IconButton(
                onPressed: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (_) => Setting())),
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
