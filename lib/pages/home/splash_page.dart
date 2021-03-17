import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  static const String routeName = '/splash';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

@override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(title: "Demo",)));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
            color: Colors.white,
            child: Center(
              child: Container(
                width: 150,
                height: 150,
                child: Image.asset("assets/logo.png"),
              ),
            )
        );
  }
}
