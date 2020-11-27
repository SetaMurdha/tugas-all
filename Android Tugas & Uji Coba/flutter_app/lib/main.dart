import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Laptops'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new ListView(children: <Widget>[
        CarWidget("Laptop 1", "X1","https://images.unsplash.com/photo-1587614382346-4ec70e388b28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
        CarWidget("Laptop 2", "X2", "https://images.unsplash.com/photo-1552857131-0afaed1953f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMjF9&auto=format&fit=crop&w=500&q=60"),
        CarWidget("Laptop 3", "X3", "https://images.unsplash.com/photo-1492448497576-45b1efcdc02c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80")
      ],
      )
    );
  }
}

class CarWidget extends StatelessWidget {
  CarWidget(this.make, this.model, this.imageSrc): super();
  final String make;
  final String model;
  final String imageSrc;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0), child: Center(

      child: Container(
        decoration: BoxDecoration(border: Border.all()), padding: EdgeInsets.all(20.0), child: Center(
        child: Column(children: <Widget>[
          Text(make),
          Text(model),
          Image.network(imageSrc)
        ],),
      ),
    )));
  }
}


