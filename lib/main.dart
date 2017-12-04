import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new AStatelessWidget()));
}

class AStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("A Dummy App"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Text here",
                style: new TextStyle(fontSize: 32.0),
              ),
            ),
            new AListView(list: [
              "Hai",
              "Hello",
              "How are you",
              "How is valkai",
              "Nalama",
              "enaku vela illa",
              "Unaku",
              "Ipo mani 6"
            ]),
          ],
        ),
      ),
    );
  }
}

class ACard extends StatefulWidget {
  @override
  ACardState createState() => new ACardState();
}

class ACardState extends State<ACard> {
  List<MaterialColor> _colors = [
    Colors.amber,
    Colors.red,
    Colors.indigo,
    Colors.green,
    Colors.blue,
  ];
  Random random = new Random();
  MaterialColor _currentColor = Colors.lime;

  void onPressed() {
    setState(() {
      _currentColor = _colors[random.nextInt(_colors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: _currentColor,
      child: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[
              new RaisedButton(child: new Text("change"), onPressed: onPressed),
            ],
          )),
    );
  }
}

class AListView extends StatelessWidget {
  AListView({this.list});

  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: generateCards(this.list),
      ),
    );
  }

  List<Widget> generateCards(List<String> list) {
    List<Widget> widgets = [];
    int i = 0;
    while (i < 6) {
      widgets.add(new ACard());
      i++;
    }
    return widgets;
  }
}
