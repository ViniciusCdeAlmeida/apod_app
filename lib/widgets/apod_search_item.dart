import 'package:apod_app/helpers/apod.dart';
import 'package:apod_app/screens/apod_detail_screen.dart';
import 'package:flutter/material.dart';

class ApodSearchItem extends StatefulWidget {
  final Apod apod;

  ApodSearchItem({
    @required this.apod,
  });
  @override
  _ApodSearchItemState createState() => _ApodSearchItemState();
}

class _ApodSearchItemState extends State<ApodSearchItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Text(
                    widget.apod.title,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  const Radius.circular(15),
                ),
                child: widget.apod.media_type == 'video'
                    ? Text('No image')
                    : Image.network(
                        widget.apod.url,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(
          ApodDetailScreen.routeName,
          arguments: widget.apod,
        );
      },
    );
  }
}
