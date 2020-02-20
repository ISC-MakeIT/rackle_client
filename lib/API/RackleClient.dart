import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'package:rackle_client/Models/models.dart';

final _env = Platform.environment;

class _RackleClient {
  String url;

  _RackleClient({
    @required this.url,
  });

  Future<List<Stations>> getStations() async {
    List list = await get(path: 'stations');
    return list.map((json) => Stations.fromJson(json)).toList();
  }

  Future<List<Spot>> getSpot() async {
    List list = await get(path: 'stations');
    return list.map((json) => Spot.fromJson(json)).toList();
  }

  Future<List<News>> getNews() async {
    List list = await get(path: 'news');
    return list.map((json) => News.fromJson(json)).toList();
  }

  Future<List<Platforms>> getPlatforms() async {
    List list = await get(path: 'st_platforms');
    return list.map((json) => Platforms.fromJson(json)).toList();
  }

  Future<dynamic> get({
    String path = '',
    Map<String, String> queryParameters,
  }) async {
    var _json;
    try {
      var resp = await http.get(
        _buildUri(
          path: path == '' ? _env['API_PATH'] : '/api/v1/$path',
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
  }) =>
      Uri.http(this.url, path, queryParameters);
}

final api = _RackleClient(url: _env['URL']);
