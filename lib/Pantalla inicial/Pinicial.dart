// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:email_password/screens/login.dart';
import 'package:flutter/material.dart';

class Pinicial extends StatefulWidget {
  @override
  State<Pinicial> createState() => _PinicialState();
}

class _PinicialState extends State<Pinicial> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return LoginScreen();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/splash-pizza.png"),
                fit: BoxFit.cover,
              )),
              child: Align(
                  alignment: Alignment.center,
                  child: ListTile(
                    title: Text(
                      "Red Pizza",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Satisfy',
                        fontSize: 60,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ))),
          Padding(
            padding: EdgeInsets.all(50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: LinearProgressIndicator(color: Colors.red),
            ),
          )
        ],
      )),
    );
  }
}
