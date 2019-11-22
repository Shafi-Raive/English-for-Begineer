import 'dart:async';
import 'package:entobn/user.dart';
import 'package:flutter/material.dart';

import 'Animation/FadeAnimation.dart';
import 'login.dart';


void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'En to Bn',
      theme: ThemeData.dark(),
      home: HomePage(),
    )
);


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    Timer(Duration(seconds: 5), () => MyNavigator.goToIntro(context));
//    Timer(Duration(seconds: 5), () => print("Time done"));
    new Future.delayed(
        const Duration(seconds: 5),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => user()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Center(child: Center(),),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("En to Bn", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("English for Beginner", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 110),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(backgroundColor: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Center(child: Center()),
                  Text(
                    "English for Beginner",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
