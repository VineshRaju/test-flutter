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
            new AListView(list: ["Hai", "Hello", "How are you","How is valkai","Nalama",
            "enaku vela illa","Unaku","Ipo mani 6"]),
          ],
        ),
      ),
    );
  }
}

class ACard extends StatelessWidget {
  ACard({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(16.0),
          child: new Center(
            child: this.title,
          ),
        ),
      ),
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
    for (String string in list) {
      widgets.add(new ACard(
        title: new Text(string),
      ));
    }
    return widgets;
  }
}
