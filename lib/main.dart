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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new ACard(
              title: new Text("Large Donut"),
              icon: new Icon(Icons.donut_large),
            ),
            new ACard(
              title: new Text("Alarm On"),
              icon: new Icon(Icons.alarm_on),
            ),
            new ACard(
              title: new Text("Heart"),
              icon: new Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}

class ACard extends StatelessWidget {
  ACard({this.title, this.icon});

  final Widget icon;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(8.0),
          child: new Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}
