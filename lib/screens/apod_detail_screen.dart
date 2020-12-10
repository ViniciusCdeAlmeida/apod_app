import 'package:apod_app/custom/custom_detail_sliverBar.dart';
import 'package:apod_app/helpers/apod.dart';
import 'package:flutter/material.dart';

class ApodDetailScreen extends StatefulWidget {
  static const routeName = '/apod_detail_screen';
  @override
  _ApodDetailScreenState createState() => _ApodDetailScreenState();
}

class _ApodDetailScreenState extends State<ApodDetailScreen> {
  Apod apod;
  @override
  Widget build(BuildContext context) {
    apod = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          DetailSliverAppBar(
            title: apod.title,
            image: apod.url,
          ),
          SliverList(delegate: new SliverChildListDelegate(_buildApod(apod))),
        ],
      ),
    );
  }
}

List _buildApod(Apod apod) {
  List<Widget> apods = [];
  apods.add(
    Container(
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                apod.explanation,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ),
    ),
  );
  return apods;
}
