import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

import 'package:rackle_client/Models/models.dart';

void main() {
  final env = Platform.environment;
  String skipMessage = 'environment values isn`t set';
  dynamic shouldSkip = env['URL'] == null ? skipMessage : false;
  test('Fetch news', () async {
    final newsModel = NewsModel();
    final news = await newsModel.value;

    for (var i = 0; i < news.length; i++) {
      expect(news[i].id, i + 1);
      print('====================');
      print('${news[i].title}');
      print('${news[i].createdAt}');
      print('${news[i].updatedAt}');
      print('${news[i].body}');
    }
  }, skip: shouldSkip);
}
