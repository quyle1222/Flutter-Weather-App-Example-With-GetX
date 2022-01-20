// ignore: file_names
class CoordWeatherModel {
  double? lat = 0;
  double? lon = 0;

  CoordWeatherModel({this.lat, this.lon});

  CoordWeatherModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() => {
        'lat': lat,
        'lon': lon,
      };

  @override
  String toString() {
    return "lat $lat lon $lon";
  }
}
