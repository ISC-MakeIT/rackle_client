import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

import 'package:rackle_client/API/RackleAPIClient.dart';

void main() {
  final env = Platform.environment;
  String skipMessage = 'environment values isn`t set';
  dynamic shouldSkip = env['URL'] == null ? skipMessage : false;
  test('APIClient request method', () async {
    final api = RackleAPIClient(
      url: env['URL'],
    );

    final json = await api.getJSON(
      category: 'news',
      path: env['API_PATH'],
      queryParameters: {
        'lat': '20.2531',
        'lng': '122.5557',
      },
    );

    expect(json['news'][0]['id'], equals(1));
  }, skip: shouldSkip);
}
