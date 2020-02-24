import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class RackleClient {
  String _url = '18.177.172.232:3000';

  Future<List<dynamic>> get(
    String path, {
    Map<String, String> queryParameters,
  }) async {
    List<dynamic> _json;

    try {
      var resp = await http.get(
        _buildUri(
          path: '/api/v1/$path',
          queryParameters: queryParameters,
        ),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
      _json = json.decode(resp.body);
    } catch (e) {
      throw e;
    }

    return _json;
  }

  Uri _buildUri({
    String path = '',
    Map<String, String> queryParameters,
  }) {
    return Uri.http(this._url, path, queryParameters);
  }
}

final api = RackleClient();
