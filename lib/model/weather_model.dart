class WeatherModel {
  String date;
  int temb;
  int maxtemb;
  int mintemb;
  String weatherStateName;

  WeatherModel(
      {required this.date,
        required this.temb,
        required this.maxtemb,
        required this.mintemb,
        required this.weatherStateName});

  factory WeatherModel.fromJson(dynamic data) {
    var josndata = data["forecast"]["forecastday"][0]["day"];
    return WeatherModel(
      date: data["location"]["localtime"],
      temb: josndata["avgtemp_c"],
      maxtemb: josndata["maxtemp_c"],
      mintemb: josndata["mintemp_c"],
      weatherStateName: josndata["condition"]["text"],
    );
  }
}