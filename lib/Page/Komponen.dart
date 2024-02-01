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

class schedule extends StatelessWidget {
  final Image image;
  final String text;
  final String jam;
  final IconData icon;
  const schedule({Key? key, required this.image, required this.text, required this.jam, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 150,
        width: 342,
        decoration: BoxDecoration(
            color: Mycolor['brown'],
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            image,
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 24,
                        color: Mycolor['white'],
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poopins'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        jam,
                        style: TextStyle(
                            fontSize: 24,
                            color: Mycolor['orange'],
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poopins'),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        icon,
                        color: Mycolor['orange'],
                        size: 35,
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class tanggal extends StatelessWidget {
  final String bulan;
  final String angka;
  const tanggal({Key? key, required this.bulan, required this.angka}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 53,
      width: 22,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bulan,
            style: TextStyle(
                fontSize: 12,
                color: Color(0xFFD9D9D9),
                fontWeight: FontWeight.normal,
                fontFamily: 'Poopins'),
          ),
          Text(
            angka,
            style: TextStyle(
              fontSize: 16,
              color: Mycolor['brown'],
              fontWeight: FontWeight.bold,),
          ),
        ],
      ),
    );
  }
}

class AdsContainer extends StatelessWidget {
  final String text;
  final String? text1;
  final String imageAssetPath;


  AdsContainer({
    Key? key,
    required this.text,
    required this.text1,
    required this.imageAssetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 14.0;

    return Padding(
      padding: EdgeInsets.all(size.width * (padSize / size.width)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Image.asset(
              imageAssetPath,
              fit: BoxFit.fill,
              // width: double.maxFinite,

            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Mycolor['brown']
              ),
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato'),
                  ),
                  Text(
                    text1!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Lato'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

