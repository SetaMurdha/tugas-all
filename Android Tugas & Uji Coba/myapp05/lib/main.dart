import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contoh Flutter'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(9.0),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(20.0, 10, 0, 10.0),
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            'https://image.psikolif.com/wp-content/uploads/2018/10/Logo-UIN-Malang-Universitas-Islam-Negeri-Malang-png.png',
                            width: 80.0,
                            height: 80.0,
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(10.0, 20.0, 0, 10.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Teknik Informatika',
                                    style:
                                        Theme.of(context).textTheme.headline5,
                                  ),
                                  Text('UIN Maulana Malik Ibrahim Malang')
                                ],
                              ))
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
                    child: Text(
                      'Keluhuran Akhlak - Keluasan Ilmu - Kematangan Professional',
                      style: TextStyle(fontSize: 12.0),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
