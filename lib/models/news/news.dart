class News {
  final int id;
  final String body;
  final createdAt;
  final String updatedAt;

  News(this.id, this.body, this.createdAt, this.updatedAt);

  News.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        body = json['body'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'body': body,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
