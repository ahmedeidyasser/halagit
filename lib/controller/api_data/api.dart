
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherServises {
 static Future<WeatherModel> getWeatherServises()async{
  Uri url = Uri.parse(
      "http://api.weatherapi.com/v1/forecast.json?key=ce34f00519754745a54162510221112&q=London&days=1&aqi=no&alerts=no"
  );
  http.Response response =await http.get(url);
  WeatherModel model = WeatherModel();
  Map<String,dynamic> data =  jsonDecode(response.body);

 }
}