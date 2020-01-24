class Toilet {
  final dynamic id;
  final dynamic stationId;
  final String imagePath;
  final int floor;
  final double lat;
  final double lng;
  final String name;
  final String category;
  final String description;
  final bool isMulitipurpose;
  final String createdAt;
  final String updatedAt;

  Toilet(
      {this.id,
      this.stationId,
      this.imagePath,
      this.floor,
      this.lat,
      this.lng,
      this.name,
      this.category,
      this.description,
      this.isMulitipurpose,
      this.createdAt,
      this.updatedAt});

  Toilet.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        stationId = json['station_id'],
        imagePath = json['image_path'],
        floor = json['floor'],
        lat = json['lat'],
        lng = json['lng'],
        name = json['name'],
        category = json['category'],
        description = json['description'],
        isMulitipurpose = json['is_mulitipurpose'],
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
        'is_mulitipurpose': isMulitipurpose,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
