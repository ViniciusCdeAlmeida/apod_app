import 'package:apod_app/screens/apod_saved_screen.dart';
import 'package:apod_app/screens/apod_search_screen.dart';
import 'package:flutter/material.dart';

class ApodScreen extends StatefulWidget {
  static const routeName = '/apod_screen';
  @override
  _ApodScreenState createState() => _ApodScreenState();
}

class _ApodScreenState extends State<ApodScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    ApodSearchScreen(),
    ApodSavedScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      appBar: AppBar(
        title: Center(
          child: const Text('Astronomy Picture of the Day'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: 'Find',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.save),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}
