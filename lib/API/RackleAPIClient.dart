import 'dart:io';

import 'package:http/http.dart' as http;

class RackleAPIClient {
  final String url;

  RackleAPIClient({this.url});

  Uri _buildUri({String path = ''}) {
    return Uri.http(this.url, path);
  }

  Future<http.Response> getRequest({path = ''}) async {
    try {
      return await http.get(
        _buildUri(path: path),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
        },
      );
    } catch (e) {
      throw e;
    }
  }
}
