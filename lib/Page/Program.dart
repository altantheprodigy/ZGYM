import 'package:flutter/material.dart';
import 'package:zgym/Page/Komponen.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  bool isCutSelected = false;
  bool isBulkSelected = false;

  Color startButtonColor = Colors.grey[400]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/Hamburger.png",
                width: 22,
                height: 15,
              ),
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: Mycolor['brown'],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.person,
                  color: Mycolor['white'],
                  size: 22,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70.0),
            Text(
              'Choose Your Target',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                setState(() {
                  isCutSelected = true;
                  isBulkSelected = false;
                  startButtonColor = Colors.orange[700]!;
                });
              },
              child: Container(
                width: 200.0,
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: isCutSelected ? Colors.red : Colors.transparent,
                    width: isCutSelected ? 4.0 : 2.0,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/cut.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            InkWell(
              onTap: () {
                setState(() {
                  isBulkSelected = true;
                  isCutSelected = false;
                  startButtonColor = Colors.orange[700]!;
                });
              },
              child: Container(
                width: 200.0,
                height: 180.0,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    color: isBulkSelected ? Colors.red : Colors.transparent,
                    width: isBulkSelected ? 4.0 : 2.0,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    'assets/images/bulk.png',
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: startButtonColor,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
