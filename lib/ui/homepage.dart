import 'package:flutter/material.dart';
import 'weather.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        leading: Icon(Icons.wb_cloudy),
        title: new Text(widget.title),
      ),
      body: Weather(),
    );
  }
}
