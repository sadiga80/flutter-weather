import 'dart:convert';

class WeatherData {
   String name;
   double temp;
   String main;
   String icon;

  WeatherData({this.name, this.temp, this.main, this.icon});

   WeatherData.deserialize(String json)
  {
    JsonDecoder decoder = JsonDecoder();
    Map<String,dynamic> map = decoder.convert(json);

     name = map['name'];
     temp = map['main']['temp'].toDouble();
     main = map['weather'][0]['main'];
     icon = map['weather'][0]['icon'];
  }
}
