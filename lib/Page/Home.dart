import 'package:flutter/material.dart';
import 'package:zgym/Page/Komponen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              schedule(
                  image: Image.asset(
                    "assets/images/meditation.png",
                    height: 138,
                    width: 138,
                  ),
                  text: "Meditate",
                  jam: "6AM",
                  icon: Icons.access_time_filled_rounded),
              schedule(
                  image: Image.asset(
                    "assets/images/workout.png",
                    height: 138,
                    width: 138,
                  ),
                  text: "Workout",
                  jam: "3PM",
                  icon: Icons.access_time_filled_rounded),
              schedule(
                  image: Image.asset(
                    "assets/images/joging.png",
                    height: 138,
                    width: 138,
                  ),
                  text: "Jogging",
                  jam: "5PM",
                  icon: Icons.access_time_filled_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
