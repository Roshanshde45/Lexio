import 'package:flutter/material.dart';
import 'package:todos/ui/CreateAccountScreen.dart';

class OverviewScreens extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OverviewScreensState();
  }
}

class OverviewScreensState extends State<OverviewScreens> {
  bool _obscureText = true;

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
                  new Padding(padding: EdgeInsets.only(top: 80.0)),
                  new Container(
                    margin: new EdgeInsets.symmetric(horizontal: 20.0),
//                    color: Colors.white,
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          "Login",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 38.0,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 20.0)),
                        new TextField(
                          decoration: InputDecoration(
                            labelText: "Email ID",
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
                            prefixIcon: Icon(Icons.lock,

                            ),
                          ),
                          obscureText: _obscureText,
                        ),
//                        new FlatButton(
//                            onPressed: _toggle,
//                            child: new Text(_obscureText ? "Show" : "Hide"))
                        new Padding(padding: EdgeInsets.only(top: 50.0)),
                        new RaisedButton(
                          onPressed: _loginButton,
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          textColor: Colors.white,
                          color: Colors.redAccent,
                          padding: const EdgeInsets.fromLTRB(45, 15, 45, 15),
                          child: new Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        new Padding(padding: EdgeInsets.only(top: 40.0)),
                        new GestureDetector(
                          child: new Text("Create new user Account !",style: new TextStyle( fontSize: 14,fontStyle: FontStyle.italic,color: Colors.white70),
                            ),
                          onTap: _CreateAcoountText,
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

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _loginButton() {
    debugPrint("hi");
  }

  void _CreateAcoountText() {
    Navigator.push(context,MaterialPageRoute(builder: (context) => CreateAccountScreen()));
    debugPrint("pushing to next screen");
  }
}
