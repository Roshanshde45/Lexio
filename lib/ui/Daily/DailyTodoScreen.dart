import 'package:flutter/material.dart';
import 'package:todos/ui/utils/InputDialog.dart';

class DailyTodoScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DailyTodoScreenState();
  }

}

class DailyTodoScreenState extends State<DailyTodoScreen>{

  bool monVal = false;
  bool tuVal = false;
  bool wedVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed:  (){},
        backgroundColor: Colors.lightBlue,
        child: Icon(Icons.add),
        tooltip: "Add Task",
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
            "Today's Task"
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Row(
             children: <Widget>[
               new Checkbox(
                 value: tuVal,
                 onChanged: (bool value) {
                   setState(() {
                     tuVal = value;
                   });
                 },
               ),
               new Text("Walk the Dog"),
             ],
            ),
            new Row(
              children: <Widget>[
                new Checkbox(
                  value: monVal,
                  onChanged: (bool value) {
                    setState(() {
                      monVal = value;
                    });
                  },
                ),
                new Text("Breakfast"),
              ],
            ),

            new Row(
              children: <Widget>[
                new Checkbox(
                  value: wedVal,
                  onChanged: (bool value) {
                    setState(() {
                      wedVal = value;
                    });
                  },
                ),
                new Text("Excercise"),
              ],
            )
          ],
        ),
      ),
    );
  }

}
