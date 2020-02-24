class Stations {
  final int id;
  final String name;
  final double lat, lng;
  final Map<String, dynamic> categories;

  Stations({
    this.id,
    this.name,
    this.lat,
    this.lng,
    this.categories,
  });

  Stations.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'],
    lat = json['lat'],
    lng = json['lng'],
    categories = json['categories'];
}
