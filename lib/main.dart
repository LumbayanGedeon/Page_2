import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> listof = [
    "Notes 1",
    "Notes 2",
    "Notes 3",
    "Notes 4",
    "Notes 5",
    "Notes 6",
    "Notes 7"
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Drawer(
        child: Text('ITips'),
      ),
      appBar: new AppBar(
        title: new Text(
          "Notes",
          style: new TextStyle(fontSize: 19.0),
        ),
        backgroundColor: Colors.lightBlueAccent,
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.add), onPressed: () => debugPrint("Add")),
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint("Search")),
        ],
      ),
      body: new Container(
        child: new ListView.builder(
          itemBuilder: (_, int index) => listDataItem(this.listof[index]),
          itemCount: this.listof.length,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("FB Button Click"),
        child: new Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
    );
  }
}

class listDataItem extends StatelessWidget {
  String itemName;
  listDataItem(this.itemName);
  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 7.0,
      child: new Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(6.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(
              child: new Text(itemName[0]),
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            new Padding(padding: EdgeInsets.all(8.0)),
            new Text(
              itemName,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}