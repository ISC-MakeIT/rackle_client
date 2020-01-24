class News {
  int id;
  String body;
  String createdAt;
  String updatedAt;

  News(this.id, this.body, this.createdAt, this.updatedAt);

  News.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        body = json['body'],
        createdAt = json['created_at'],
        updatedAt = json['updated_at'];
}
