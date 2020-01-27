import 'package:flutter_test/flutter_test.dart';
import 'dart:io';
import 'dart:convert';

import 'package:rackle_client/API/RackleAPIClient.dart';

void main() {
  final env = Platform.environment;
  String skipMessage = 'environment values isn`t set';
  dynamic shouldSkip = env['URL'] == null ? skipMessage : false;
  test('APIClient request method', () async {
    final api = RackleAPIClient(
      url: env['URL'],
    );

    final resp = await api.getRequest(path: env['API_PATH'], queryParameters: {
      'lat': '20.2531',
      'lng': '122.5557',
    });
    final String body = resp.body;
    final parsed = json.decode(body);
    expect(parsed['currentStation'], equals({
      'id': 3,
      'name': '小田原駅',
      'latlng': 'POINT (139.155393 35.256445)',
      'created_at': '2020-01-26T11:23:17.389Z',
      'updated_at': '2020-01-26T11:23:17.389Z',
      'lat': 35.256445,
      'lng': 139.155393
    }));
  }, skip: shouldSkip);
}
