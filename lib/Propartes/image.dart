// import 'package:dark_station/Data/Data_fromRU.dart';
// import 'package:dark_station/Data/User/User_Data.dart';
import 'package:flutter/material.dart';

class ImageP extends StatelessWidget {
  final String ImageUrl;
  final double size;
  const ImageP({super.key, required this.ImageUrl, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Image.asset(
        ImageUrl,
        width: size,
        height: size,
      ),
    );
  }
}
