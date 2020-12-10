import 'package:apod_app/custom/custom_providers.dart';
import 'package:apod_app/custom/custom_route.dart';
import 'package:apod_app/database/databaseMoor.dart';
import 'package:apod_app/screens/apod_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

AppDatabase db;

void main() {
  db = AppDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'APP inventario',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              ),
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CustomPageTransitionBuilder(),
              TargetPlatform.iOS: CustomPageTransitionBuilder(),
            },
          ),
        ),
        initialRoute: '/',
        home: ApodScreen(),
        routes: rotas(),
      ),
    );
  }
}
