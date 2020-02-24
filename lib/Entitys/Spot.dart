class Spot {
  final Map<String, dynamic> currentStation;
  final Map<String, dynamic> elevator;
  final Map<String, dynamic> toilet;
  final Map<String, dynamic> slope;
  final Map<String, dynamic> step;
  final Map<String, dynamic> gate;

  Spot({
    this.currentStation,
    this.elevator,
    this.toilet,
    this.slope,
    this.step,
    this.gate,
  });

  Spot.fromJson(Map<String, dynamic> json) : 
    currentStation = json['currentStation'],
    elevator = json['elevator'],
    toilet = json['toilet'],
    slope = json['slope'],
    step = json['step'],
    gate = json['gate'];
}
