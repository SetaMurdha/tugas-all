import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text("Hello"),),
        body: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  color: Colors.purpleAccent,
                  padding: EdgeInsets.all(60),
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Text("Helloooo", style: TextStyle(fontSize: 10),)
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(60),
                  margin: EdgeInsets.all(10),
                ),
              ],
            ),
            Container(
              color: Colors.grey,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.purple,
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Hello")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
