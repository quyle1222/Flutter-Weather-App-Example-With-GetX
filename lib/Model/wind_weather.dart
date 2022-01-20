class WindWeather {
  double? speed;
  int? deg;
  WindWeather({this.speed, this.deg});

  WindWeather.fromJson(Map<String, dynamic> json)
      : speed = json["speed"],
        deg = json["deg"];

  Map<String, dynamic> toJson() => {"speed": speed, "deg": deg};
}
