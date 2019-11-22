import 'package:entobn/Animation/FadeAnimation.dart';
import 'package:entobn/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';


class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}
final FirebaseAuth auth = FirebaseAuth.instance;

class _loginState extends State<login> {

  TextEditingController emilControler = new TextEditingController();
  TextEditingController passControler = new TextEditingController();

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
            SizedBox(height: 0,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40,),
                      FadeAnimation(1.4, Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                style: TextStyle(color: Colors.black,),
                                controller: emilControler,
                                decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                              ),
                              child: TextField(
                                style: TextStyle(color: Colors.black,),
                                controller: passControler,
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                      SizedBox(height: 40,),
                      FadeAnimation(1.6, Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange[900]
                        ),
                        child: Center(
                          child: RaisedButton(
                            disabledColor: Colors.orange[900],
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                            onPressed: (){
                              Colors.orange[900];
                              loginEmail();
//                              signUpEmail();
                            },
                          ),
//                          child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

                        ),
                      )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void signUpEmail()
    async{

    FirebaseUser user;
    try{
      user = await auth.createUserWithEmailAndPassword(email: emilControler.text, password: passControler.text);

    }catch(e){
      print(e.toString());
    }


  }
  void loginEmail()
  async{

    FirebaseUser user;
    try{
      user = await auth.signInWithEmailAndPassword(email: emilControler.text, password: passControler.text);

    }catch(e){
      print(e.toString());
    }finally{
      if(user != null){
        Route route = MaterialPageRoute(builder: (context) => Home());
        Navigator.push(context, route);
      print("User done");
      }
    }


  }
}
