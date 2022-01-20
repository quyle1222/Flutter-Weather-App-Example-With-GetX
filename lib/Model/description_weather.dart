class DescriptionWeather {
  String? description;
  String? icon;

  DescriptionWeather(this.description, this.icon);

  DescriptionWeather.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        icon = json['icon'];

  Map<String, dynamic> toJson() => {
        'description': description,
        'icon': icon,
      };

  toList() {}
}
