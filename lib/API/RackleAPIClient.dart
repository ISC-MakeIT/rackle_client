import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutter_dotenv/flutter_dotenv.dart';

var env = DotEnv().env;

class RackleAPIClient {
  String url = env['URL'];

  RackleAPIClient({this.url});

  Uri _buildUri({
    String path = '',
    Map<String, String> queryParameters,
  }) {
    return Uri.http(this.url, path, queryParameters);
  }

  Future<Map<String, dynamic>> getJSON({
    String category,
    String path = '',
    Map<String, String> queryParameters,
  }) async {
    var _json;
    try {
      var resp = await http.get(
        _buildUri(
          path: path == ''? env['API_PATH'] : path,
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
}
