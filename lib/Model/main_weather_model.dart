class MainWeatherModel {
  double? temp;
  double? feels_like;
  double? temp_min;
  double? temp_max;
  int? pressure;
  int? humidity;

  MainWeatherModel(this.temp, this.feels_like, this.temp_min, this.temp_max,
      this.pressure, this.humidity);

  MainWeatherModel.fromJson(Map<String, dynamic> json)
      : temp = json['temp'],
        feels_like = json['feels_like'],
        temp_min = json['temp_min'],
        temp_max = json['temp_max'],
        pressure = json['pressure'],
        humidity = json['humidity'];

  Map<String, dynamic> toJson() => {
        'temp': temp,
        'feels_like': feels_like,
        'temp_min': temp_min,
        'temp_max': temp_max,
        'pressure': pressure,
        'humidity': humidity
      };

  @override
  String toString() {
    // TODO: implement toString
    return "temp $feels_like";
  }
}
