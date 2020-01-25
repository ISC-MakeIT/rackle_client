import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

import 'package:rackle_client/models/models.dart';

void main() {
  test(
    'aroundSpot model test',
    () {
      var jsonString = '''
{
    "aroundSpot": {
        "elevetor": [
            {
                "id": 1,
                "station_id": 2,
                "image_path": "hoge",
                "floor": 1,
                "lat": 35.465786,
                "lng": 139.622313,
                "name": "hoge",
                "category": "elevator",
                "description": "hoge",
                "size": 1,
                "from": 1,
                "to": 4,
                "created_at": "2020-01-18T14:26:38.000Z",
                "updated_at": "2020-01-18T14:26:38.000Z"
            }
        ],
        "toilet": [
            {
                "id": 2,
                "station_id": 2,
                "image_path": "",
                "floor": 2,
                "lat": 35.465786,
                "lng": 139.622313,
                "name": "fuga",
                "category": "toilet",
                "description": "255字以上になることないよね？",
                "is_multipurpose": "true",
                "created_at": "2020-01-18T14:26:38.000Z",
                "updated_at": "2020-01-18T14:26:38.000Z"
            }
        ],
        "slope": [
            {
                "id": 3,
                "station_id": 2,
                "image_path": "",
                "floor": 3,
                "lat": 35.465786,
                "lng": 139.622313,
                "name": "uwaan",
                "category": "slope",
                "description": "",
                "level": 1,
                "created_at": "2020-01-18T14:26:38.000Z",
                "updated_at": "2020-01-18T14:26:38.000Z"
            }
        ],
        "step": [
            {
                "id": 4,
                "station_id": 2,
                "image_path": "",
                "floor": 3,
                "lat": 35.465786,
                "lng": 139.622313,
                "name": "uwaan",
                "category": "step",
                "description": "",
                "level": 1,
                "created_at": "2020-01-18T14:26:38.000Z",
                "updated_at": "2020-01-18T14:26:38.000Z"
            }
        ]
    }
}
    ''';

      final parsed = json.decode(jsonString);
      final aroundSpot = new AroundSpot.fromJson(parsed);
      expect(aroundSpot.elevetor[0].id, 1);
      expect(aroundSpot.toilet[0].id, 2);
      expect(aroundSpot.slope[0].id, 3);
      expect(aroundSpot.step[0].id, 4);
    },
  );
}
