import 'package:rackle_client/models/aroundSpots/Elevetor.dart';
import 'package:rackle_client/models/aroundSpots/Slope.dart';
import 'package:rackle_client/models/aroundSpots/Step.dart';
import 'package:rackle_client/models/aroundSpots/Toilet.dart';

class AroundSpot {
  final List<Elevetor> elevetor;
  final List<Toilet> toilet;
  final List<Step> step;
  final List<Slope> slope;

  AroundSpot({this.elevetor, this.toilet, this.step, this.slope});

  factory AroundSpot.fromJson(Map<String, dynamic> json) {
    final target = json['aroundSpot'];

    //TODO: need refactoring
    var _elevetor = target['elevetor'] as List;
    List<Elevetor> elevetorList =
        _elevetor.map((i) => Elevetor.fromJson(i)).toList();

    var _toilet = target['toilet'] as List;
    List<Toilet> toiletList = _toilet.map((i) => Toilet.fromJson(i)).toList();

    var _step = target['step'] as List;
    List<Step> stepList = _step.map((i) => Step.fromJson(i)).toList();

    var _slope = target['slope'] as List;
    List<Slope> slopeList = _slope.map((i) => Slope.fromJson(i)).toList();

    return AroundSpot(
      elevetor: elevetorList,
      toilet: toiletList,
      step: stepList,
      slope: slopeList,
    );
  }

  Map<String, dynamic> toJson() => {
        'elevetor': elevetor,
        'toilet': toilet,
        'step': step,
        'slope': slope,
      };
}
