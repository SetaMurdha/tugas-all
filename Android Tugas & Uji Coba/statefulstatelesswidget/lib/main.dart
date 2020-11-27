import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int Num1 = 0;
  void pressNum1(){
    setState(() {
      Num1 = Num1+1;
    });
  }
  int Num2 = 0;
  void pressNum2(){
    setState(() {
      Num2 = Num2 + 1;
    });
  }
  int hasil = 0;
  void resultHasil(){
    setState(() {
      hasil = Num1 + Num2;
    });
  }
  void ResetAll(){
    setState(() {
      Num1 = 0;
      Num2 = 0;
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tambah 1 dan 2"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Nilai : "+Num1.toString()+"\t\t\t\t", style: TextStyle(fontSize: 25),),
                  RaisedButton(
                    child: Text("Tambah Num1"),
                      onPressed: pressNum1
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Nilai : "+Num2.toString()+"\t\t\t\t", style: TextStyle(fontSize: 25),),
                  RaisedButton(
                      child: Text("Tambah Num2"),
                      onPressed: pressNum2
                  )
                ],
              ),
              Text("Hasil : "+ hasil.toString(), style: TextStyle(fontSize: 25),),
              Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Tambah"),
                    onPressed: resultHasil,
                  ),
                  RaisedButton(
                    child: Text("Reset"),
                    onPressed: ResetAll,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
