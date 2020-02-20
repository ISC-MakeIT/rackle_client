class News {
  final int id;
  final String title;
  final String body;
  final String createdAt;
  final String updatedAt;

  News({
    this.id,
    this.title,
    this.body,
    this.createdAt,
    this.updatedAt,
  });

  News.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    title = json['title'],
    body = json['body'],
    createdAt = json['createdAt'],
    updatedAt = json['updatedAt'];
}
