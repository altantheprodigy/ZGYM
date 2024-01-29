import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Map Mycolor = {
  'brown': const Color(0xFF4A3F35),
  'orange': const Color(0xFFFA7D09),
  'bottombar': const Color(0xFFFF4301),
  'white' : const Color(0xFFFFFFFF)

};

class ProgramChoice extends StatelessWidget {
  final Color backgroundColor;
  final Image image;
  final String text;
  const ProgramChoice({Key? key, required this.backgroundColor, required this.image, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: image,
        ),
        SizedBox(height: 5,),
        Text(
          text,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poopins'),
        )
      ],
    );
  }
}


