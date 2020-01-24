class MapInfo {
  CurrentStation currentStation;
  AroundSpots aroundSpots;
  // List<Stations> stations;
  List<CurrentStation> stations;
  List<News> news;

  MapInfo({this.currentStation, this.aroundSpots, this.stations, this.news});

  MapInfo.fromJson(Map<String, dynamic> json) {
    currentStation = json['currentStation'] != null
        ? new CurrentStation.fromJson(json['currentStation'])
        : null;
    aroundSpots = json['aroundSpots'] != null
        ? new AroundSpots.fromJson(json['aroundSpots'])
        : null;
    if (json['stations'] != null) {
      // stations = new List<Stations>();
      stations = new List<CurrentStation>();
      json['stations'].forEach((v) {
        // stations.add(new Stations.fromJson(v));
        stations.add(new CurrentStation.fromJson(v));
      });
    }
    if (json['news'] != null) {
      news = new List<News>();
      json['news'].forEach((v) {
        news.add(new News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.currentStation != null) {
      data['currentStation'] = this.currentStation.toJson();
    }
    if (this.aroundSpots != null) {
      data['aroundSpots'] = this.aroundSpots.toJson();
    }
    if (this.stations != null) {
      data['stations'] = this.stations.map((v) => v.toJson()).toList();
    }
    if (this.news != null) {
      data['news'] = this.news.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CurrentStation {
  String name;
  double lat;
  double lng;

  CurrentStation({this.name, this.lat, this.lng});

  CurrentStation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}

class AroundSpots {
  List<Elevetor> elevetor;
  List<Toilet> toilet;

  AroundSpots({this.elevetor, this.toilet});

  AroundSpots.fromJson(Map<String, dynamic> json) {
    if (json['elevetor'] != null) {
      elevetor = new List<Elevetor>();
      json['elevetor'].forEach((v) {
        elevetor.add(new Elevetor.fromJson(v));
      });
    }
    if (json['toilet'] != null) {
      toilet = new List<Toilet>();
      json['toilet'].forEach((v) {
        toilet.add(new Toilet.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.elevetor != null) {
      data['elevetor'] = this.elevetor.map((v) => v.toJson()).toList();
    }
    if (this.toilet != null) {
      data['toilet'] = this.toilet.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Elevetor {
  int id;
  int stationId;
  String imagePath;
  int floor;
  double lat;
  double lng;
  String name;
  String category;
  String description;
  int size;
  int from;
  int to;
  String createdAt;
  String updatedAt;

  Elevetor(
      {this.id,
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
      this.updatedAt});

  Elevetor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stationId = json['station_id'];
    imagePath = json['image_path'];
    floor = json['floor'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    category = json['category'];
    description = json['description'];
    size = json['size'];
    from = json['from'];
    to = json['to'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['station_id'] = this.stationId;
    data['image_path'] = this.imagePath;
    data['floor'] = this.floor;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['name'] = this.name;
    data['category'] = this.category;
    data['description'] = this.description;
    data['size'] = this.size;
    data['from'] = this.from;
    data['to'] = this.to;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Toilet {
  int id;
  int stationId;
  String imagePath;
  int floor;
  double lat;
  double lng;
  String name;
  String category;
  String description;
  String isMultipurpose;
  String createdAt;
  String updatedAt;

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
      this.isMultipurpose,
      this.createdAt,
      this.updatedAt});

  Toilet.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stationId = json['station_id'];
    imagePath = json['image_path'];
    floor = json['floor'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    category = json['category'];
    description = json['description'];
    isMultipurpose = json['is_multipurpose'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['station_id'] = this.stationId;
    data['image_path'] = this.imagePath;
    data['floor'] = this.floor;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['name'] = this.name;
    data['category'] = this.category;
    data['description'] = this.description;
    data['is_multipurpose'] = this.isMultipurpose;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class News {
  int id;
  String body;
  String createdAt;
  String updatedAt;

  News({this.id, this.body, this.createdAt, this.updatedAt});

  News.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    body = json['body'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['body'] = this.body;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
