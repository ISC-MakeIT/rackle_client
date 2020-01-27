import 'dart:io';

import 'package:http/http.dart' as http;

class RackleAPIClient {
  final String url;

  RackleAPIClient({this.url});

  Uri _buildUri({String path = '', Map<String, String> queryParameters}) {
    return Uri.http(this.url, path, queryParameters);
  }

  Future<http.Response> getRequest({
    String path = '',
    Map<String, String> queryParameters,
  }) async {
    try {
      return await http.get(
        _buildUri(
          path: path,
          queryParameters: queryParameters,
        ),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
    } catch (e) {
      throw e;
    }
  }
}
