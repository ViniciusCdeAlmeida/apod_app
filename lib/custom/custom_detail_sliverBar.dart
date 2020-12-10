import 'package:flutter/material.dart';

class DetailSliverAppBar extends StatefulWidget {
  final String title;
  final String image;

  DetailSliverAppBar({
    this.title,
    this.image,
  });

  @override
  _DetailSliverAppBarState createState() => _DetailSliverAppBarState();
}

class _DetailSliverAppBarState extends State<DetailSliverAppBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return SliverAppBar(
      expandedHeight: deviceSize.height / 3,
      floating: true,
      pinned: true,
      snap: false,
      backgroundColor: Colors.yellow[800],
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(30.0),
          bottomRight: const Radius.circular(30.0),
        ),
      ),
      title: Text(
        widget.title,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: TextStyle(fontSize: 14.0),
        maxLines: 3,
      ),
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsetsDirectional.only(
          bottom: 3.3,
          start: 50,
          end: 50,
        ),
        background: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: const Radius.circular(15.0),
            bottomRight: const Radius.circular(15.0),
          ),
          child: Image.network(
            widget.image == null
                ? 'https://images.pexels.com/photos/443356/pexels-photo-443356.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
                : widget.image,
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
