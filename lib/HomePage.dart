import 'package:flutter/material.dart';
import 'LoginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
    List<Widget> _widgetOptions = <Widget>[
    Container (
        width: 800,
        height: 800,
        child: Padding(
        padding: const EdgeInsets.only(
            left: 0.0, right: 0.0, top: 60, bottom: 0),
            child: Image.asset('assets/images/home.png'),
        ),
    ),
    Container (
        width: 700,
        height: 800,
        child: Image.asset('assets/images/camera.png'),
    ),
    Container (
        width: 800,
        height: 800,
        child: Image.asset('assets/images/leaderboard.png'),
    ),
    Container (
        width: 800,
        height: 800,
        child: Image.asset('assets/images/history.png'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    // appBar: AppBar(
    //     backgroundColor: Colors.white, // Status bar color
    //     ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: 'Camera',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_outlined),
            label: 'Leaderboard',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'History',
            backgroundColor: Colors.black,
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}


