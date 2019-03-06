import 'package:flutter/material.dart';
import 'ui/homepage.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: new HomePage(title:'Weather'),
    );
  }
}
