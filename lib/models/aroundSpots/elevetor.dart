class Elevetor {
  final dynamic id;
  final dynamic stationId;
  final String imagePath;
  final int floor;
  final double lat;
  final double lng;
  final String name;
  final String category;
  final String description;
  final int size;
  final int from;
  final int to;
  final String createdAt;
  final String updatedAt;

  Elevetor(
      this.id,
      this.stationId,
      this.imagePath,
      this.floor,
      this.lat,
      this.lng,
      this.name,
      this.category,
      this.description,
      this.size,
      this.from,
      this.to,
      this.createdAt,
      this.updatedAt);

  Elevetor.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        stationId = json['station_id'],
        imagePath = json['image_path'],
        floor = json['floor'],
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        category = json['category'],
        description = json['description'],
        size = json['size'],
        from = json['from'],
        to = json['to'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'];

  Map<String, dynamic> toJson() => {
        'station_id': stationId,
        'image_path': imagePath,
        'floor': floor,
        'lat': lat,
        'lng': lng,
        'name': name,
        'category': category,
        'description': description,
        'size': size,
        "from": from,
        "to": to,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
