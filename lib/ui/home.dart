import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<Home> {
  int _counter = 0;
  void _increaseCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter = _counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(title: Text("Using Buttons")),
        body: new Center(
          child: new Text(
            "$_counter",
            style: new TextStyle(
              color: _counter % 2 == 0 ? Colors.blue : Colors.red,
              fontSize: 40.0,
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: _decreaseCounter,
                backgroundColor: Colors.blue,
                child: new Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: _increaseCounter,
                backgroundColor: Colors.blue,
                child: new Icon(Icons.add),
              ),
            ],
          ),
        ));
  }
}
