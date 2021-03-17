import 'package:flutter/material.dart';
import 'package:urbanfish/pages/home/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Color.fromRGBO(8, 104, 197, 1.0),
        // primaryColor: Color.fromRGBO(8, 104, 197, 1.0),
        primaryColor: Colors.blue.shade800,

      ),
      home: SplashPage(),
    );
  }
}

