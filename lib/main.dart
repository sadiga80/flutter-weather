import 'package:flutter/material.dart';
import 'ui/home_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  static const CS_BLUE = Color.fromRGBO(23, 72, 105, 1.0);
  static const CS_BLUE_LIGHT = Color.fromRGBO(38, 116, 168, 1.0);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Weather',
      theme: ThemeData(accentColor: CS_BLUE,
        primaryColor: CS_BLUE,
        primaryColorLight: CS_BLUE_LIGHT,
        brightness: Brightness.dark,
        fontFamily: 'NotoSans',),
      home: new HomePage(title:'Weather'),
    );
  }
}
