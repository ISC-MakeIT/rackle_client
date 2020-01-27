import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import 'dart:io';

import 'package:rackle_client/API/RackleAPIClient.dart';
import 'package:rackle_client/models/models.dart';

void main() {
  final env = Platform.environment;
  String skipMessage = 'environment values isn`t set';
  dynamic shouldSkip = env['URL'] == null ? skipMessage : false;
  test(
    'aroundSpot model test',
    () async {
      final api = RackleAPIClient(
        url: env['URL'],
      );

      final resp =await api.getRequest(
        path: env['API_PATH'], 
        queryParameters: {
          'lat': '20.2531',
          'lng': '122.5557',
      });
      final String body = resp.body;
      final parsed = json.decode(body);
      final aroundSpot = AroundSpot.fromJson(parsed);
      expect(aroundSpot.elevetor[0].id, equals('1'));
      expect(aroundSpot.toilet[0].id, equals('2'));
      expect(aroundSpot.slope[0].id, equals('3'));
      expect(aroundSpot.step[0].id, equals('4'));
    },
    skip: shouldSkip,
  );
}
