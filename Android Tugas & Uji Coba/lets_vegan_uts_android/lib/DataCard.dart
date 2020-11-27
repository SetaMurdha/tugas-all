import "package:flutter/material.dart";

class VendorCard extends StatelessWidget {
  VendorCard({this.image, this.text,this.vendor});

  final String image,text,vendor;

  @override
  Widget build(BuildContext context) {
    return new FlatButton(
        onPressed: () {
          Navigator.pushNamed(context,vendor);
        },
        child: Card(
            margin: EdgeInsets.all(10.0),
            child: Column(children: <Widget>[
              Image.asset(image, width: 150.0),
              Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(text,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w800)))
            ])));
  }
}

class ItemCard extends StatelessWidget {
  ItemCard({this.image, this.nama, this.brand, this.harga});

  final String image, nama, brand, harga;

  @override
  Widget build(BuildContext context) {
    return new FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/item');
        },
        child: Card(
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Image.asset(image, width: 150.0),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(nama,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w900)),
                    Text("Brand : " + brand, style: TextStyle(fontSize: 18.0)),
                    Text(harga,
                        style: TextStyle(fontSize: 24.0, color: Colors.blue))
                  ])
            ],
          ),
        ));
  }
}
