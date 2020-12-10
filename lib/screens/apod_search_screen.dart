import 'package:flutter/material.dart';

class ApodSearchScreen extends StatefulWidget {
  static const routeName = '/apod_search_screen';
  @override
  _ApodSearchScreenState createState() => _ApodSearchScreenState();
}

class _ApodSearchScreenState extends State<ApodSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ApodSearchScreen')),
    );
  }
}
