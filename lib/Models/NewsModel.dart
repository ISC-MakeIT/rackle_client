import 'package:rackle_client/API/RackleClient.dart' show api;
import 'package:rackle_client/Entitys/entitys.dart';

class NewsModel {
  Future<List<News>> get value async {
    final jsonList = await fetchData();
    return jsonList.map((json) => News.fromJson(json)).toList();
  }

  Future<List<dynamic>> fetchData() async {
    final List<dynamic> jsonList = await api.get('news');

    return jsonList;
  }
}
