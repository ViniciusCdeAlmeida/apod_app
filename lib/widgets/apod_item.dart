import 'package:apod_app/helpers/apod.dart';
import 'package:apod_app/screens/apod_detail_screen.dart';
import 'package:flutter/material.dart';

//Widget for Apod saved page
class ApodItem extends StatefulWidget {
  final Apod apod;

  ApodItem(this.apod);
  @override
  _ApodItemState createState() => _ApodItemState();
}

class _ApodItemState extends State<ApodItem> {
  @override
  Widget build(BuildContext context) {
    //InkWell make the card clickable
    return InkWell(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Date: ${widget.apod.date}',
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 40.0,
                  ),
                  child: Text(
                    widget.apod.title,
                  ),
                ),
              ),
              //Make a round image to fill in a card
              ClipRRect(
                borderRadius: BorderRadius.all(
                  const Radius.circular(15),
                ),
                //Some Requests get a video insted a image
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
