import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:lets_vegan_uts_android/DataCard.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("EIGER DRY BAG 30L", style: TextStyle(fontSize: 25.0)),
          backgroundColor: Colors.black87,
          toolbarHeight: 80.0,
        ),
        body: ListView(children: <Widget>[
          Image.asset(
            'images/a001.jpg',
            width: 50.0,
          ),
          Center(
              child: Text("EIGER DRY BAG 30L",
                  style:
                  TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700))),
          Center(
              child: Text("Brand : EIGER", style: TextStyle(fontSize: 25.0))),
          Center(child: Text("Stok : 20", style: TextStyle(fontSize: 25.0))),
          Center(
              child: Text("Harga : IDR 250.000",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w700))),
          Container(
              height: 55.0,
              margin: EdgeInsets.only(top: 20.0),
              child: RaisedButton(
                color: Colors.orange[900],
                textColor: Colors.white,
                child: Text("BELI", style: TextStyle(fontSize: 30.0)),
                onPressed: () {},
              ))
        ]));
  }
}

