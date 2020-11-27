import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:lets_vegan_uts_android/DataCard.dart';
import 'package:lets_vegan_uts_android/ItemPage.dart';
import 'package:lets_vegan_uts_android/MenuPage.dart';

void main() {
  runApp(new MaterialApp(
      title: "Outdoor Shop",
      home: MyApp(),
      routes: {'/item': (context) => ItemPage(),
        '/eiger': (context) => EigerPage(),
        '/consina': (context) => ConsinaPage(),
        '/arei': (context) => AreiPage(),
        '/forester': (context) => ForesterPage(),
      }
  )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Home", style: TextStyle(fontSize: 25.0)),
          backgroundColor: Colors.black87,
          toolbarHeight: 80.0,
        ),
        body: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(children: <Widget>[
              Text('Semeru Outdoor & Adventure',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Staatliches")),
              Text('"Make Your Adventure AwesomeR"',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Staatliches",
                      color: Colors.orange[900]))
            ]),
          ),
          Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 220.0,
              child:
              ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                new VendorCard(image: "images/eiger.jpg", text: "EIGER",vendor:"/eiger"),
                new VendorCard(image: "images/consina.jpg", text: "CONSINA",vendor:"/consina"),
                new VendorCard(image: "images/arei.jpg", text: "AREI",vendor:"/arei"),
                new VendorCard(image: "images/forester.jpg", text: "FORESTER",vendor:"/forester"),
              ])),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(children: <Widget>[
              Text('- New Items -',
                  style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Staatliches")),
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(children: <Widget>[
              ItemCard(
                  image: "images/a001.jpg",
                  nama: "EIGER DRY BAG 30 L",
                  brand: "EIGER",
                  harga: "IDR 198.000"),
              ItemCard(
                  image: "images/a002.jpg",
                  nama: "CARSTENSZ GLOVE",
                  brand: "CONSINA",
                  harga: "IDR 275.000"),
              ItemCard(
                  image: "images/a003.jpg",
                  nama: "KATHMANDU 4",
                  brand: "CONSINA",
                  harga: "IDR 1.275.000"),
              ItemCard(
                  image: "images/a004.jpg",
                  nama: "CORSAIR HAT",
                  brand: "FORESTER",
                  harga: "IDR 75.000"),
            ]),
          ),
        ]));
  }
}

