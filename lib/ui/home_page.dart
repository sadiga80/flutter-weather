import 'package:flutter/material.dart';
import 'package:weather_app/ui/weather.dart';
import 'package:weather_app/model/weather_data.dart';
import 'package:weather_app/api/map_api.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  WeatherData _weatherData;
  final mapApi = MapApi();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Icon(Icons.wb_cloudy),
        title: new Text(widget.title),
      ),
      body: _weatherData != null ? Weather(weatherData: _weatherData):
      Center(
        child: CircularProgressIndicator(
          strokeWidth: 4.0,
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }

  getCurrentLocation()
  {
    loadWeather(lat: 12.9716,lon: 77.5946);
  }
  loadWeather({double lat, double lon}) async {
    MapApi mapApi = MapApi.getInstance();
    final data = await mapApi.getWeather(lat: lat,lon: lon);
    setState(() {
      this._weatherData=data;
    });
  }
}
