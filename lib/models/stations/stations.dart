class Stations {
  final String name;
  final double lat;
  final double lng;

  Stations.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        lat = json['lat'],
        lng = json['lng'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'lat': lat,
        'lng': lng,
      };
}
