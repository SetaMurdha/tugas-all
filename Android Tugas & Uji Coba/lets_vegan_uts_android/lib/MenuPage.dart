import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:lets_vegan_uts_android/DataCard.dart';


class EigerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar:AppBar(
              title: Text("EIGER", style: TextStyle(fontSize: 25.0)),
              backgroundColor: Colors.black87,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text:"Bags"),
                  Tab(text:"Apparel"),
                  Tab(text:"Equipment"),
                ],
              ),
            ),
            body:TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a005.jpg",
                        nama:  "HYPERLITE 35L",
                        brand: "EIGER",
                        harga: "IDR 1.299.000"),
                    ItemCard(
                        image: "images/a006.jpg",
                        nama:  "PATH 35L",
                        brand: "EIGER",
                        harga: "IDR 1.399.000"),
                    ItemCard(
                        image: "images/a007.jpg",
                        nama:  "ELIPTIC SOLARIS",
                        brand: "EIGER",
                        harga: "IDR 1.149.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a008.jpg",
                        nama: "J.DNA ACTIVE-XT",
                        brand: "EIGER",
                        harga: "IDR 469.000"),
                    ItemCard(
                        image: "images/a009.jpg",
                        nama: "GAZANIA PARKA",
                        brand: "EIGER",
                        harga: "IDR 699.000"),
                    ItemCard(
                        image: "images/a010.jpg",
                        nama: "WINDPROOF",
                        brand: "EIGER",
                        harga: "IDR 299.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a011.jpg",
                        nama: "AUTODROMO",
                        brand: "EIGER",
                        harga: "IDR 489.000"),
                    ItemCard(
                        image: "images/a012.jpg",
                        nama:  "ANTERO",
                        brand: "EIGER",
                        harga: "IDR 599.000"),
                    ItemCard(
                        image: "images/a013.jpg",
                        nama:  "PROVO",
                        brand: "EIGER",
                        harga: "IDR 449.000"),
                  ],
                )
              ],
            ))
    );

  }
}

class ConsinaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar:AppBar(
              title: Text("CONSINA", style: TextStyle(fontSize: 25.0)),
              backgroundColor: Colors.black87,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text:"Bags"),
                  Tab(text:"Apparel"),
                  Tab(text:"Equipment"),
                ],
              ),
            ),
            body:TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                )
              ],
            ))
    );

  }
}

class AreiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar:AppBar(
              title: Text("AREI", style: TextStyle(fontSize: 25.0)),
              backgroundColor: Colors.black87,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text:"Bags"),
                  Tab(text:"Apparel"),
                  Tab(text:"Equipment"),
                ],
              ),
            ),
            body:TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                )
              ],
            ))
    );

  }
}

class ForesterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar:AppBar(
              title: Text("FORESTER", style: TextStyle(fontSize: 25.0)),
              backgroundColor: Colors.black87,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(text:"Bags"),
                  Tab(text:"Apparel"),
                  Tab(text:"Equipment"),
                ],
              ),
            ),
            body:TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a001.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a002.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                    ItemCard(
                        image: "images/a003.jpg",
                        nama: "EIGER DRY BAG 30 L",
                        brand: "EIGER",
                        harga: "IDR 198.000"),
                  ],
                )
              ],
            ))
    );

  }
}
