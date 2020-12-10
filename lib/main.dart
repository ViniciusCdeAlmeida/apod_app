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
          primaryColor: Colors.lightBlue[300],
          toggleableActiveColor: const Color(0xFF2247C7),
          errorColor: const Color(0xFF7A1C02),
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
