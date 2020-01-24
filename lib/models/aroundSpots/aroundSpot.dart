import 'package:rackle_client/models/aroundSpots/elevetor.dart';
import 'package:rackle_client/models/aroundSpots/slope.dart';
import 'package:rackle_client/models/aroundSpots/step.dart';
import 'package:rackle_client/models/aroundSpots/toilet.dart';

class AroundSpot {
  final List<Elevetor> elevetor;
  final List<Toilet> toilet;
  final List<Step> step;
  final List<Slope> slope;

  AroundSpot(this.elevetor, this.toilet, this.step, this.slope);

  AroundSpot.fromJson(Map<String, dynamic> json)
      : elevetor = json['elevetor'],
        toilet = json['toilet'],
        step = json['step'],
        slope = json['slope'];

  Map<String, dynamic> toJson() => {
        'elevetor': elevetor,
        'toilet': toilet,
        'step': step,
        'slope': slope,
      };
}
