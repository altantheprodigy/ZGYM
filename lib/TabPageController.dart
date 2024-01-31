import 'package:flutter/material.dart';
import 'package:zgym/Page/Home.dart';
import 'package:zgym/Page/Komponen.dart';
import 'package:zgym/Page/Program.dart'; 

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  List<Widget> halaman = [
    HomePage(),
    ProgramPage(),
    Container(
      color: Colors.yellow,
    ),
  ];

  int _currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padSize = 25.0;
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: halaman,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Mycolor['orange'],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOutCirc,
              );
            });
          },
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          iconSize: size.width * (padSize / size.width),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Program',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Chat',
            ),
          ],
        ),
      ),
    );
  }
}
