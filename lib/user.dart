import 'package:entobn/details.dart';
import 'package:entobn/login.dart';
import 'package:entobn/main.dart';
import 'package:flutter/material.dart';


class user extends StatefulWidget {
  @override
  _userState createState() => _userState();
}


class _userState extends State<user> {


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
            SizedBox(height: 200,),
            Padding(
              padding: EdgeInsets.all(90),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("Admin", style: TextStyle(color: Colors.white, fontSize: 22)),
                    onTap: (){
                      Route route = MaterialPageRoute(builder: (context) => login());
                      Navigator.push(context, route);
                      Divider();
                    },
                  ),
                  SizedBox(height: 5,),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("User", style: TextStyle(color: Colors.white, fontSize: 22)),
                    onTap: (){
                      Route route = MaterialPageRoute(builder: (context) => details());
                      Navigator.push(context, route);
                      Divider();
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
