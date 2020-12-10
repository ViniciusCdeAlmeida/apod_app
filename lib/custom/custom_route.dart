import 'package:apod_app/screens/apod_saved_screen.dart';
import 'package:apod_app/screens/apod_screen.dart';
import 'package:apod_app/screens/apod_search_screen.dart';
import 'package:flutter/material.dart';

class CustomPageTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

Map<String, Widget Function(BuildContext)> rotas() {
  return {
    ApodScreen.routeName: (ctx) => ApodScreen(),
    ApodSavedScreen.routeName: (ctx) => ApodSavedScreen(),
    ApodSearchScreen.routeName: (ctx) => ApodSearchScreen(),
  };
}
