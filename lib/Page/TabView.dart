import 'package:flutter/material.dart';
import 'package:zgym/Extension.dart';
import 'package:zgym/Page/Komponen.dart';

import '../ScheduleData.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning!",
                style: TextStyle(
                    fontSize: 24,
                    color: Mycolor['brown'],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poopins'),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Flexible(
                      fit: FlexFit.tight,
                      child: ProgramChoice(
                          backgroundColor: Mycolor['brown'],
                          image: Image.asset("assets/images/gym.png"),
                          text: "Program")),
                  Flexible(
                      fit: FlexFit.tight,
                      child: ProgramChoice(
                          backgroundColor: Mycolor['orange'],
                          image: Image.asset("assets/images/meditasi.png"),
                          text: "Meditate")),
                  Flexible(
                      fit: FlexFit.tight,
                      child: ProgramChoice(
                          backgroundColor: Mycolor['brown'],
                          image: Image.asset("assets/images/run.png"),
                          text: "Workout")),
                  Flexible(
                      fit: FlexFit.tight,
                      child: ProgramChoice(
                          backgroundColor: Mycolor['orange'],
                          image: Image.asset("assets/images/cart.png"),
                          text: "Progress")),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Performance",
                style: TextStyle(
                    fontSize: 24,
                    color: Mycolor['brown'],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poopins'),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: performances(
                        backgroundColor: Mycolor['brown'],
                        text: "Steps",
                        image: Image.asset(
                          "assets/images/step.png",
                          height: 110,
                          width: 110,
                        ),
                        angka: "2378"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: performances(
                        backgroundColor: Mycolor['orange'],
                        text: "Calories",
                        image: Image.asset(
                          "assets/images/Calories.png",
                          height: 110,
                          width: 110,
                        ),
                        angka: "1623"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Today's Schedule",
                style: TextStyle(
                    fontSize: 24,
                    color: Mycolor['brown'],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poopins'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 20.0, // Spacing between columns
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 2
                    // Spacing between rows
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ScheduleData.length,
                  itemBuilder: (context, index) {
                    return  scheduleTab(index: index);
                  },),
              )

            ],
          ),
        ),
      ),
    );
  }
}
