import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:todos/ui/Daily/DailyTodoScreen.dart';
import 'package:todos/ui/utils/InputDialog.dart';

class DashBoard extends StatelessWidget {

  void _dailyTodo(BuildContext context) {
    debugPrint("pushing to Dailt Todo Screen");
    Navigator.push(context,MaterialPageRoute(builder: (context) => DailyTodoScreen()));
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: new Center(
        child: ListView(
          children: <Widget>[
            new Padding(padding: EdgeInsets.only(top: 40.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                new CircularPercentIndicator(
                  radius: 180.0,
                  lineWidth: 20.0,
                  animation: true,
                  backgroundColor: Colors.white,
                  percent: 0.4,
                  center: new Text(
                    "40%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        fontStyle: FontStyle.normal),
                  ),
                  footer: Text(
                    "Daily Task",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        letterSpacing: 1),
                  ),
                ),
               new Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   new CircularPercentIndicator(
                     radius: 100.0,
                     lineWidth: 15.0,
                     animation: true,
                     backgroundColor: Colors.white,
                     percent: 0.6,
                     center: new Text(
                       "60%",
                       style: new TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 17.0,
                           fontStyle: FontStyle.normal),
                     ),
                     footer: Text(
                       "Weekly Task",
                       style: new TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 15.0,
                           fontStyle: FontStyle.italic,
                           letterSpacing: 1),
                     ),
                   ),
                   new CircularPercentIndicator(
                     radius: 80.0,
                     lineWidth: 13.0,
                     animation: true,
                     backgroundColor: Colors.white,
                     percent: 0.7,
                     center: new Text(
                       "70%",
                       style: new TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 17.0,
                           fontStyle: FontStyle.normal),
                     ),
                     footer: Text(
                       "Monthy Task",
                       style: new TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 15.0,
                           fontStyle: FontStyle.italic,
                           letterSpacing: 1),
                     ),
                   ),
                 ],
               )
              ],
            ),

            new Padding(padding: EdgeInsets.only(top: 30.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new InkWell(
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        width: 150,
                        height: 80,
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.directions_walk,
                              size: 40.0,
                            ),
                            new Text(
                              "Daily Todo",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ))),
                  ),
                  onTap:(){
                    _dailyTodo(context);
                  },
                  highlightColor: Colors.white70,
                  hoverColor: Colors.red,
                  splashColor: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                new InkWell(
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 150,
                      height: 80,
                      child: new Center(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.view_week,
                              size: 40.0,
                            ),
                            new Text(
                              "Weekly Todo",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: _daily,
                  highlightColor: Colors.white70,
                  hoverColor: Colors.redAccent,
                  splashColor: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new InkWell(
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 150,
                      height: 80,
                      child: new Center(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.today,
                              size: 40.0,
                            ),
                            new Text(
                              "Monthly Todo",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: _daily,
                  highlightColor: Colors.white70,
                  hoverColor: Colors.redAccent,
                  splashColor: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                new InkWell(
                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 150,
                      height: 80,
                      child: new Center(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Icon(
                              Icons.nature_people,
                              size: 40.0,
                            ),
                            new Text(
                              "Special Days",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: _daily,
                  highlightColor: Colors.white70,
                  hoverColor: Colors.redAccent,
                  splashColor: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 30)),
            new Center(

            )
          ],
        ),
      ),
    );

  }

  void _daily() {
    debugPrint("hi");
  }



}
