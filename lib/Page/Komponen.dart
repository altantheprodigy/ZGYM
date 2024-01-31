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

class performances extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Image image;
  final String angka;
  const performances({Key? key, required this.backgroundColor, required this.text, required this.image, required this.angka}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 161,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 24,
                color: Mycolor['white'],
                fontWeight: FontWeight.w600,
                fontFamily: 'Poopins'),
          ),
         image,
          Text(
            angka,
            style: TextStyle(
                fontSize: 34,
                color: Mycolor['white'],
                fontWeight: FontWeight.w600,
                fontFamily: 'Poopins'),
          ),
        ],
      ),
    );
  }
}



