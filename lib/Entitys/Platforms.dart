class Platforms {
  final int id;
  final String name, colorHex;
  final List<List<int>> mapImage;

  Platforms({
    this.id,
    this.name,
    this.colorHex,
    this.mapImage,
  });

  Platforms.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    name = json['name'],
    colorHex = json['colorHex'],
    mapImage = json['mapImage'];
}
