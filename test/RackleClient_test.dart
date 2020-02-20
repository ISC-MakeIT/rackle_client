import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

import 'package:rackle_client/API/RackleClient.dart';

void main() {
  final env = Platform.environment;
  String skipMessage = 'environment values isn`t set';
  dynamic shouldSkip = env['URL'] == null ? skipMessage : false;
  test('APIClient request method', () async {
    final api = RackleClient(
      url: env['URL'],
    );

    final stations = await api.getStations();
    final spot = await api.getSpot();
    final news = await api.getNews();
    // server側に不具合があってデータが読み取れてない
    // final platforms = await api.getPlatforms();
    print(stations);
    print(spot);

    expect(news[0].id, equals(1));
  }, skip: shouldSkip);
}
