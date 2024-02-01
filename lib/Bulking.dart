import 'package:flutter/material.dart';
import 'package:zgym/Extension.dart';
import 'package:zgym/Page/Komponen.dart';

class bulkingPage extends StatelessWidget {
  const bulkingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 85, horizontal: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Bulk Programs",
                style: TextStyle(
                    fontSize: 24,
                    color: Mycolor['brown'],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poopins'),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Mycolor['brown'],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Mycolor['orange'],
                  size: 24,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 58,
                  height: 83,
                  decoration: BoxDecoration(
                    color: Mycolor['orange'],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Feb",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFEEEEEE),
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Poopins'),
                        ),
                        Text(
                          "01",
                          style: TextStyle(
                              fontSize: 30,
                              color: Mycolor['brown'],
                              fontWeight: FontWeight.bold,),
                        ),
                      ],
                    ),
                  ),
                ),
                tanggal(bulan: "Feb", angka: "02"),
                tanggal(bulan: "Feb", angka: "03"),
                tanggal(bulan: "Feb", angka: "04"),
                tanggal(bulan: "Feb", angka: "05"),
                tanggal(bulan: "Feb", angka: "06"),
                tanggal(bulan: "Feb", angka: "07"),
                tanggal(bulan: "Feb", angka: "08"),
                tanggal(bulan: "Feb", angka: "09"),
                tanggal(bulan: "Feb", angka: "10"),
                tanggal(bulan: "Feb", angka: "11"),
                tanggal(bulan: "Feb", angka: "12"),
              ].withSpaceBetween(width: 10),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TODO",
                style: TextStyle(
                    fontSize: 22,
                    color: Mycolor['brown'],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poopins'),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Morning",
                  style: TextStyle(
                      fontSize: 14,
                      color: Mycolor['brown'],
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poopins'),
                ),
              ),
              AdsContainer(text: "Push Up", text1: "15x4", imageAssetPath: "assets/images/img.png")
            ],
          )
        ].withSpaceBetween(height: 30),
      ),
    );
  }
}
