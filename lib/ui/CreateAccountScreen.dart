import 'package:flutter/material.dart';
import 'package:todos/ui/Dashboard.dart';

class CreateAccountScreen extends StatefulWidget {
@override
State<StatefulWidget> createState() {
  return CreateAccountScreenState();
  }
}

class CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Column(
          children: <Widget>[
            new Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.only(top: 60.0)),
                  new Container(
                    margin: new EdgeInsets.symmetric(horizontal: 20.0),
//                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Sign Up",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 38.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextField(
                          decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                           prefixIcon: Icon(Icons.person,)
                          ),
                        ),
                        new TextField(
                          decoration: InputDecoration(
                            labelText: "Email Id",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.mail),
                          ),
                        ),
                        new TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                        ),
                        new TextField(
                          decoration: InputDecoration(
                            labelText: "DOB",
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(Icons.date_range),
                          ),
                        ),

//                        new FlatButton(
//                            onPressed: _toggle,
//                            child: new Text(_obscureText ? "Show" : "Hide"))
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                        new RaisedButton(
                          onPressed: _signUpButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          textColor: Colors.white,
                          color: Colors.redAccent,
                          padding: const EdgeInsets.fromLTRB(45, 15, 45, 15),
                          child: new Text(
                            "Create Account",
                            style:
                            TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 40.0)),
                        new GestureDetector(
                          child: new Text("Already have an account !",style: new TextStyle( fontSize: 14,fontStyle: FontStyle.italic,color: Colors.white70),
                          ),
                          onTap: _haveAccount,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signUpButton(){
    Navigator.push(context,MaterialPageRoute(builder: (context) => DashBoard()));

    debugPrint("Sign up Button pressed");
  }
  void _haveAccount(){
    Navigator.pop(context);
  }

}