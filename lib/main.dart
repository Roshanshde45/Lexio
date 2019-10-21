import 'package:flutter/material.dart';
import 'dart:async';
import 'ui/OverviewScreens.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(new MaterialApp(
    title: "SplashScreen",
    color: Colors.lightBlueAccent,
    theme: ThemeData(fontFamily: 'CaveatBrush_Regular'),
    home: new SplashScreen(),
  ));
}

  class SplashScreen extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
      return SplashScreenState();
    }
  }

  class SplashScreenState extends State<SplashScreen> {
    @override
    void initState() {
      super.initState();
      loadData();
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blue,
      body: new Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            new Image.asset("images/logoone.png", width: 270, height: 270,),
            new Padding(padding: EdgeInsets.only(bottom: 70.0)),
              SpinKitChasingDots(
                color: Colors.white,
                size: 30.0,
              ),
          new Container(
              padding: EdgeInsets.only(top: 40.0),
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  new Text("Perseverance is not a long race.",
                    style: new TextStyle(fontStyle: FontStyle.italic,color: Colors.white,fontFamily: 'CaveatBrush_Regular'),),
                  new Text("it is many short races one after the other",
                    style: new TextStyle(fontStyle: FontStyle.italic,color: Colors.white),),
                  ],
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }

    Future<Timer> loadData() async {
      return new Timer(Duration(seconds: 5), onDoneLoading);
    }

    onDoneLoading() async {
      Navigator.push(context,MaterialPageRoute(builder: (context) => OverviewScreens()));
      debugPrint("5 seconds Done");
    }
}

