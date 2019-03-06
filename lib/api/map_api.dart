import 'package:http/http.dart' show Client;
import 'package:weather_app/model/weather_data.dart';

class MapApi{

  static const _apiKey = '629b3753d7666b926232e3ddaf6ee634';
  static const _endpoint = 'http://api.openweathermap.org/data/2.5';
  double lat, lon;
  Client client = Client();

  static MapApi _instance;
  static MapApi getInstance() => _instance ??= MapApi();

  String _apiCall({double lat,double lon})
  {
    return _endpoint + "/weather?lat=" + lat.toString() + "&lon="+lon.toString() + "&APPID=" + _apiKey + "&units=metric";
  }

  getWeather({double lat, double lon}) async
  {
    var response = await client.get(
        Uri.encodeFull(_apiCall(lat: lat, lon: lon)),
        headers: {
          'Accept': 'application/json'
        });
    return WeatherData.deserialize(response.body);

  }
  


}