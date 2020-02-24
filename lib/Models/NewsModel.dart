import 'package:rackle_client/API/RackleClient.dart' show api;
import 'package:rackle_client/Entitys/entitys.dart';

class NewsModel {
  Future<List<News>> get value => fetchData();

  Future<List<News>> fetchData() async {
    var jsonList = await api.get('news');

    return jsonList.map((json) => News.fromJson(json)).toList();
  }
}
