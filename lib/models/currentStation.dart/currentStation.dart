class CurrentStation {
  final String name;
  final double lat;
  final double lng;

  CurrentStation(this.name, this.lat, this.lng);

  CurrentStation.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        lat = json['lat'],
        lng = json['lng'];
}
