import 'package:flutter_test/flutter_test.dart';
import 'dart:io';

import 'package:rackle_client/API/RackleAPIClient.dart';

void main() {
  final env = Platform.environment;
  test('APIClient request method', () async {
    final api = RackleAPIClient(
      url: env['URL'],
    );

    final resp = await api.getRequest(path: env['API_PATH']);
    final String body = resp.body;
    print(body);

    /// 正しいResponseがに対して存在する値を比較した時のテスト
		/// expect(body[key], equal(value));
		/// 正しいResponseに対して存在しない値を比較した時のテスト
		/// expect(body[key], equal(wrong_value));
		/// 間違ったResponseに対してランダムな値を比較した時のテスト
		/// expect(body[wrong_key], equal(any_value));
  });
}
