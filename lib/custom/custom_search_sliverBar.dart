import 'dart:ui';

import 'package:flutter/material.dart';

//Custom Sliver App Bar to show search a APOD by date and title
class SearchSliverAppBar extends StatefulWidget {
  final String title;
  final Function clean;
  final Function filter;

  SearchSliverAppBar({this.title, this.filter, this.clean});

  @override
  _SearchSliverAppBarState createState() => _SearchSliverAppBarState();
}

class _SearchSliverAppBarState extends State<SearchSliverAppBar>
    with TickerProviderStateMixin {
  bool _search = false;

  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: false,
      snap: true,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(30.0),
          bottomRight: const Radius.circular(30.0),
        ),
      ),
      title: Text(
        _search ? '' : widget.title,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: TextStyle(fontSize: 14.0),
        maxLines: 3,
      ),
      actions: [
        !_search == false
            ? IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  widget.clean();
                  _controller.text = '';
                  setState(() {
                    _search = false;
                  });
                },
              )
            : IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _search = true;
                  });
                },
              ),
      ],
      //The box to show where the text is going on
      flexibleSpace: FlexibleSpaceBar(
        title: AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          reverseDuration: Duration(milliseconds: 10),
          transitionBuilder: (child, animation) {
            final fadeAnimation =
                CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn);
            if (_search) {
              return ClipRect(
                child: FadeTransition(
                  opacity: fadeAnimation,
                  child: child,
                ),
              );
            } else {
              return ClipRect(
                child: FadeTransition(
                  opacity: fadeAnimation,
                  child: child,
                ),
              );
            }
          },
          child: _search
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.only(left: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.grey[500],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.clear,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            widget.clean();
                            _controller.text = '';
                          },
                        ),
                        icon: Icon(Icons.search),
                        contentPadding: const EdgeInsets.only(top: 5),
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                      controller: _controller,
                      onEditingComplete: () {
                        widget.filter(_controller.text);
                      },
                      onChanged: (value) => widget.filter(_controller.text),
                    ),
                  ),
                )
              : null,
        ),
        // : null,
        titlePadding: const EdgeInsetsDirectional.only(
          bottom: 3.3,
          start: 50,
          end: 50,
        ),
      ),
    );
  }
}
