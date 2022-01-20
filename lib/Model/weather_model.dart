import 'package:weather_app/Model/coord_weather_model.dart';
import 'package:weather_app/Model/description_weather.dart';
import 'package:weather_app/Model/main_weather_model.dart';

class WeatherModel {
  MainWeatherModel? main;
  CoordWeatherModel? coord;
  int? timezone;
  int? id;
  String? name;
  int? cod;
  List<DescriptionWeather>? weather;

  WeatherModel(
      {this.timezone,
      this.id,
      this.name,
      this.cod,
      this.coord,
      this.main,
      this.weather});

  WeatherModel.fromJson(Map<String, dynamic> json) {
    var listDescription = json['weather'] as List;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
    coord = CoordWeatherModel.fromJson(json["coord"]);
    main = MainWeatherModel.fromJson(json["main"]);
    weather =
        listDescription.map((e) => DescriptionWeather.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() =>
      {'timezone': timezone, 'id': id, 'name': name, 'cod': cod};

  @override
  String toString() {
    // TODO: implement toString
    return "timezome $timezone, name $name, coord $coord, main $main";
  }
}
