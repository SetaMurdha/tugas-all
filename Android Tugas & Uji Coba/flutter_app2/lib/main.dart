import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue, width: 300, height: 200,
                child: Center(child: Text(
                  "Saya sedang melatih kemampuan flutter saya",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center, style: TextStyle(
                    color: Colors.white24,fontSize: (40), fontWeight: FontWeight.bold),
                )
            )
        ),
      ),
      )
    );
  }
}
